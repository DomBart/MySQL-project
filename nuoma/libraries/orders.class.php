<?php
/**
 * Uzsakymu redagavimo klasė
 *
 * @author ISK
 */

class orders {
	
	private $uzsakymas_lentele = '';
        private $krepseliu_lentele = '';
	
	public function __construct() {
		$this->uzsakymas_lentele = config::DB_PREFIX . 'uzsakymas';
                $this->krepseliu_lentele = config::DB_PREFIX . 'krepselis';
	}
	
	/**
	 * Uzsakymo išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getOrders($id) {
		$query = "  SELECT *
					FROM {$this->uzsakymas_lentele}
					WHERE `Numeris`='{$id}'";
		$data = mysql::select($query);
		
		return $data[0];
	}
	
	/**
	 * Markių sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getOrdersList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT *
					FROM {$this->uzsakymas_lentele}{$limitOffsetString}";
		$data = mysql::select($query);
		
		return $data;
	}
        
         public function getCartList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT *
					FROM {$this->krepseliu_lentele}{$limitOffsetString}";
		$data = mysql::select($query);
		
		return $data;
	}

	/**
	 * Markių kiekio radimas
	 * @return type
	 */
	public function getOrdersListCount() {
		$query = "  SELECT COUNT(`Numeris`) as `kiekis`
					FROM {$this->uzsakymas_lentele}";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
                public function getSumPriceOfOrders($dateFrom, $dateTo) {
		$whereClauseString = "";
		if(!empty($dateFrom)) {
			$whereClauseString .= " WHERE `{$this->uzsakymas_lentele}`.`Data`>='{$dateFrom}'";
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->uzsakymas_lentele}`.`Data`<='{$dateTo}'";
			}
		} else {
			if(!empty($dateTo)) {
				$whereClauseString .= " WHERE `{$this->uzsakymas_lentele}`.`Data`<='{$dateTo}'";
			}
		}
		
		$query = "  SELECT sum(`{$this->krepseliu_lentele}`.`Suma`) AS `prekiu_suma`
					FROM `{$this->krepseliu_lentele}`
					{$whereClauseString}";
		$data = mysql::select($query);

		return $data;
	}
        
	/**
	 * Uzsakymo įrašymas
	 * @param type $data
	 */
	public function insertOrder($data) {
		$query = "  INSERT INTO {$this->uzsakymas_lentele}
                        (
                                `Numeris`,
                                `Data`,
                                `fk_PIRKEJAS`,
                                `fk_PIRKEJASPirkejo_kod`,
                                `fk_KREPSELISid_KREPSELIS`          
                        )
                        VALUES
                        (
                                '{$data['Numeris']}',
                                '{$data['Data']}',
                                '{$data['fk_PIRKEJAS']}',
                                '{$data['fk_PIRKEJASPirkejo_kod']}',
                                '{$data['fk_KREPSELISid_KREPSELIS']}'
                        )";
		mysql::query($query);
	}
	
	/**
	 * Uzsakymo atnaujinimas
	 * @param type $data
	 */
	public function updateOrder($data) {
		$query = "  UPDATE {$this->uzsakymas_lentele}
					SET      `Data`='{$data['Data']}',
                                                 `fk_PIRKEJAS`='{$data['fk_PIRKEJAS']}',
                                                 `fk_PIRKEJASPirkejo_kod`='{$data['fk_PIRKEJASPirkejo_kod']}',
                                                 `fk_KREPSELISid_KREPSELIS`='{$data['fk_KREPSELISid_KREPSELIS']}'
					WHERE `Numeris`='{$data['Numeris']}'";
		mysql::query($query);
	}
	
	/**
	 * Uzsakymo šalinimas
	 * @param type $id
	 */
	public function deleteOrder($id) {
		$query = "  DELETE FROM {$this->uzsakymas_lentele}
					WHERE `Numeris`='{$id}'";
		mysql::query($query);
	}
	
                public function getOrdersA($dateFrom, $dateTo) {
		
                
		$query = " SELECT darbuotojas.darbuotojo_id, darbuotojas.vardas, darbuotojas.pavarde, darbuotojas.telefonas, darbuotojas.darbo_stazas,
                keliavimo_kryptis.zemynas
                FROM uzsakymas LEFT JOIN darbuotojas ON uzsakymas.uzsakymo_nr = darbuotojas.fk_UZSAKYMASuzsakymo_nr
                LEFT JOIN klientas ON klientas.fk_UZSAKYMASuzsakymo_nr = uzsakymas.uzsakymo_nr
                INNER JOIN keliavimo_kryptis ON keliavimo_kryptis.krypties_id = klientas.fk_KELIAVIMO_KRYPTISkrypties_id
                WHERE darbuotojas.darbo_stazas <= $priceTo AND
                keliavimo_kryptis.zemynas = '$zemynas'
                GROUP BY darbuotojas.darbuotojo_id
                ORDER BY darbuotojas.vardas ASC";
		$data = mysql::select($query);
                
		return $data;
	}
        
         public function getOrdersAStat($dateFrom, $dateTo) {
		$query = "   SELECT COUNT(keliavimo_kryptis.zemynas) AS visizemynai, SUM(darbuotojas.darbo_stazas) as sumadarbuotojai
                            FROM uzsakymas LEFT JOIN darbuotojas ON uzsakymas.uzsakymo_nr = darbuotojas.fk_UZSAKYMASuzsakymo_nr
                LEFT JOIN klientas ON klientas.fk_UZSAKYMASuzsakymo_nr = uzsakymas.uzsakymo_nr
                INNER JOIN keliavimo_kryptis ON keliavimo_kryptis.krypties_id = klientas.fk_KELIAVIMO_KRYPTISkrypties_id
                WHERE darbuotojas.darbo_stazas <= $priceTo AND
                keliavimo_kryptis.zemynas = '$zemynas'";
                
		$data = mysql::select($query);
                
		
		return $data;
}
//	/**
//	 * Markės modelių kiekio radimas
//	 * @param type $id
//	 * @return type
//	 */
//	public function getModelCountOfCustomer($id) {
//		$query = "  SELECT COUNT({$this->modeliai_lentele}.`id`) AS `kiekis`
//					FROM {$this->pirkejas_lentele}
//						INNER JOIN {$this->modeliai_lentele}
//							ON {$this->pirkejas_lentele}.`id`={$this->modeliai_lentele}.`fk_marke`
//					WHERE {$this->pirkejas_lentele}.`id`='{$id}'";
//		$data = mysql::select($query);
//		
//		return $data[0]['kiekis'];
//	}

	
}
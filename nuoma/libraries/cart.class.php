<?php
/**
 * Uzsakymu redagavimo klasė
 *
 * @author ISK
 */

class cart {
	
	private $krepselis_lentele = '';
        private $uzsakymu_lentele = '';
	
	public function __construct() {
		$this->krepselis_lentele = config::DB_PREFIX . 'krepselis';
                $this->uzsakymu_lentele = config::DB_PREFIX . 'uzsakymas';
	}
	
	/**
	 * Uzsakymo išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getCarts($id) {
		$query = "  SELECT *
					FROM {$this->krepselis_lentele}
					WHERE `id_KREPSELIS`='{$id}'";
		$data = mysql::select($query);
		
		return $data[0];
	}
	
	/**
	 * Markių sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getCartsList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT *
					FROM {$this->krepselis_lentele}{$limitOffsetString}";
		$data = mysql::select($query);
		
		return $data;
	}
        
        public function getOrdersList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT *
					FROM {$this->uzsakymu_lentele}{$limitOffsetString}";
		$data = mysql::select($query);
		
		return $data;
	}
	/**
	 * Krepseliu kiekio radimas
	 * @return type
	 */
	public function getCartsListCount() {
		$query = "  SELECT COUNT(`id_KREPSELIS`) as `kiekis`
					FROM {$this->krepselis_lentele}";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Krepselio įrašymas
	 * @param type $data
	 */
	public function insertCart($data) {
		$query = "  INSERT INTO {$this->krepselis_lentele}
                        (
                                `id_KREPSELIS`,
                                `Suma`,
                                `Klientas`,
                                `fk_UZSAKYMASNumeris`          
                        )
                        VALUES
                        (
                                '{$data['id_KREPSELIS']}',
                                '{$data['Suma']}',
                                '{$data['Klientas']}',
                                '{$data['fk_UZSAKYMASNumeris']}'
                        )";
		mysql::query($query);
	}
	
	/**
	 * Uzsakymo atnaujinimas
	 * @param type $data
	 */
	public function updateCart($data) {
		$query = "  UPDATE {$this->krepselis_lentele}
					SET      `Suma`='{$data['Suma']}',
                                                 `Klientas`='{$data['Klientas']}',
                                                 `fk_UZSAKYMASNumeris`='{$data['fk_UZSAKYMASNumeris']}'
					WHERE `id_KREPSELIS`='{$data['id_KREPSELIS']}'";
		mysql::query($query);
	}
	
	/**
	 * Uzsakymo šalinimas
	 * @param type $id
	 */
	public function deleteCart($id) {
		$query = "  DELETE FROM {$this->krepselis_lentele}
					WHERE `id_KREPSELIS`='{$id}'";
		mysql::query($query);
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
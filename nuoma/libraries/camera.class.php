<?php
/**
 * Uzsakymu redagavimo klasė
 *
 * @author ISK
 */

class camera {
	
	private $kamera_lentele = '';
        private $krepseliu_lentele = '';
	
	public function __construct() {
		$this->kamera_lentele = config::DB_PREFIX . 'fotoaparatas';
                $this->krepseliu_lentele = config::DB_PREFIX . 'krepselis';
	}
	
	/**
	 * Uzsakymo išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getCamera($id) {
		$query = "  SELECT `{$this->kamera_lentele}`.`Gamyklinis_kodas`,
                                   `{$this->kamera_lentele}`.`Tipas`,
                                   `{$this->kamera_lentele}`.`Sensorius`,
                                   `{$this->kamera_lentele}`.`Objektyvo_jungtis`,
                                   `{$this->kamera_lentele}`.`Baterija`,
                                   `{$this->kamera_lentele}`.`Kaina`,
                                   `{$this->kamera_lentele}`.`fk_KREPŠELISid_KREPSELIS`
					FROM {$this->kamera_lentele}
					WHERE `Gamyklinis_kodas`='{$id}'";
		$data = mysql::select($query);
                if(empty($data)) return null;
		return $data[0];
	}
	
	/**
	 * Kameru sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getCameraList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT *
					FROM {$this->kamera_lentele}{$limitOffsetString}";
		$data = mysql::select($query);
		
		return $data;
	}
        
        public function getCartList($limit = null, $offset = null) {
		$query = "  SELECT *
					FROM {$this->krepseliu_lentele}";
		$data = mysql::select($query);
		
		return $data;
	}
	/**
	 * Kamerų kiekio radimas
	 * @return type
	 */
	public function getCameraListCount() {
		$query = "  SELECT COUNT(`Gamyklinis_kodas`) as `kiekis`
					FROM {$this->kamera_lentele}";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Kameru įrašymas
	 * @param type $data
	 */
	public function insertCamera($data) {
		$query = "  INSERT INTO {$this->kamera_lentele}
                        (
                                `Gamyklinis_kodas`,
                                `Tipas`,
                                `Sensorius`,
                                `Objektyvo_jungtis`,
                                `Baterija`,
                                `Kaina`,
                                `fk_KREPŠELISid_KREPSELIS`
                        )
                        VALUES
                        (
                                '{$data['Gamyklinis_kodas']}',
                                '{$data['Tipas']}', 
                                '{$data['Sensorius']}',  
                                '{$data['Objektyvo_jungtis']}',
                                '{$data['Baterija']}',
                                '{$data['Kaina']}',
                                '{$data['fk_KREPŠELISid_KREPSELIS']}'
                        )";
		mysql::query($query);
	}
	
	/**
	 * Kameros atnaujinimas
	 * @param type $data
	 */
	public function updateCamera($data) {
		$query = "  UPDATE {$this->kamera_lentele}
					SET      `Tipas`='{$data['Tipas']}',
                                                 `Sensorius`='{$data['Sensorius']}',
                                                 `Objektyvo_jungtis`='{$data['Objektyvo_jungtis']}',
                                                 `Baterija`='{$data['Baterija']}',
                                                 `Kaina`='{$data['Kaina']}',
                                                 `fk_KREPŠELISid_KREPSELIS`='{$data['fk_KREPŠELISid_KREPSELIS']}'
					WHERE `Gamyklinis_kodas`='{$data['Gamyklinis_kodas']}'";
		mysql::query($query);
	}
	
	/**
	 * Kameros šalinimas
	 * @param type $id
	 */
	public function deleteCamera($id) {
		$query = "  DELETE FROM {$this->kamera_lentele}
					WHERE `Gamyklinis_kodas`='{$id}'";
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
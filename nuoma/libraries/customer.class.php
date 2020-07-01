<?php
/**
 * Automobilių markių redagavimo klasė
 *
 * @author ISK
 */

class customer {
	
	private $pirkejas_lentele = '';
	
	public function __construct() {
		$this->pirkejas_lentele = config::DB_PREFIX . 'pirkejas';
	}
	
	/**
	 * Pirkejo išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getCustomer($id) {
		$query = "  SELECT *
					FROM {$this->pirkejas_lentele}
					WHERE `Pirkejo_kod`='{$id}'";
		$data = mysql::select($query);
		
		return $data[0];
	}
	
	/**
	 * Markių sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getCustomerList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT *
					FROM {$this->pirkejas_lentele}{$limitOffsetString}";
		$data = mysql::select($query);
		
		return $data;
	}

	/**
	 * Markių kiekio radimas
	 * @return type
	 */
	public function getCustomerListCount() {
		$query = "  SELECT COUNT(`Pirkejo_kod`) as `kiekis`
					FROM {$this->pirkejas_lentele}";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Markės įrašymas
	 * @param type $data
	 */
	public function insertCustomer($data) {
		$query = "  INSERT INTO {$this->pirkejas_lentele}
                        (
                                `Pirkejo_kod`,
                                `Vardas`,
                                `Fotografo_tp`
                        )
                        VALUES
                        (
                                '{$data['Pirkejo_kod']}',
                                '{$data['Vardas']}',
                                '{$data['Fotografo_tp']}'
                        )";
		mysql::query($query);
	}
	
	/**
	 * Pirkejo atnaujinimas
	 * @param type $data
	 */
	public function updateCustomer($data) {
		$query = "  UPDATE {$this->pirkejas_lentele}
					SET    `Vardas`='{$data['Vardas']}',
                                                `Fotografo_tp`='{$data['Fotografo_tp']}',
                                                 `Pirkejo_kod`='{$data['Pirkejo_kod']}'
					WHERE `Pirkejo_kod`='{$data['Pirkejo_kod']}'";
		mysql::query($query);
	}
	
	/**
	 * Pirkejo šalinimas
	 * @param type $id
	 */
	public function deleteCustomer($id) {
		$query = "  DELETE FROM {$this->pirkejas_lentele}
					WHERE `Pirkejo_kod`='{$id}'";
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
<?php

include 'libraries/customer.class.php';
$customersObj = new customer();

if(!empty($id)) {
	// patikriname, ar šalinama markė nepriskirta modeliui
//	$count = $customersObj->getCustomerCountOfCustomer($id);

	$removeErrorParameter = '';
	if($count == 0) {
		// šaliname markę
		$customersObj->deleteCustomer($id);
	} else {
		// nepašalinome pirkejo
		$removeErrorParameter = '&remove_error=1';
	}

	// nukreipiame į pirkeju puslapį
	header("Location: index.php?module={$module}&action=list{$removeErrorParameter}");
	die();
}

?>
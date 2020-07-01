<?php

include 'libraries/orders.class.php';
$ordersObj = new orders();

include 'libraries/cart.class.php';
$cartsObj = new cart();

if(!empty($id)) {
	// patikriname, ar šalinama markė nepriskirta modeliui
//	$count = $customersObj->getCustomerCountOfCustomer($id);

	$removeErrorParameter = '';
	if($count == 0) {
		// šaliname uzsakyma
		$ordersObj->deleteOrder($id);
	} else {
		// nepašalinome uzsakymo
		$removeErrorParameter = '&remove_error=1';
	}

	// nukreipiame į pirkeju puslapį
	header("Location: index.php?module={$module}&action=list{$removeErrorParameter}");
	die();
}

?>
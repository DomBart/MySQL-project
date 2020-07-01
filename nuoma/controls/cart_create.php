<?php

include 'libraries/cart.class.php';
$cartsObj = new cart();

include 'libraries/orders.class.php';
$ordersObj = new orders();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('id_KREPSELIS');

// maksimalūs leidžiami laukų ilgiai
$maxLengths = array (
	'id_KREPSELIS' => 20
);

// paspaustas išsaugojimo mygtukas
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
		'id_KREPSELIS' => 'anything');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// įrašome naują įrašą
		$cartsObj->insertCart($dataPrepared);

		// nukreipiame į markių puslapį
		header("Location: index.php?module={$module}&action=list");
		die();
	} else {
		// gauname klaidų pranešimą
		$formErrors = $validator->getErrorHTML();
		// gauname įvestus laukus
		$data = $_POST;
	}
}

// įtraukiame šabloną
include 'templates/cart_form.tpl.php';

?>
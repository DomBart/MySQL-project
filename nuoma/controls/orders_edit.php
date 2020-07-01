<?php

include 'libraries/orders.class.php';
$ordersObj = new orders();

include 'libraries/cart.class.php';
$cartsObj = new cart();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('Data');

// maksimalūs leidžiami laukų ilgiai
$maxLengths = array (
	'Data' => 30,
);

// paspaustas išsaugojimo mygtukas
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
                'Numeris' => 'positivenumber',
		'Data' => 'anything',
                'fk_PIRKEJAS' => 'anything',
                'fk_PIRKEJASPirkejo_kod' => 'anything',
                'fk_KREPSELISid_KREPSELIS' => 'anything');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// atnaujiname duomenis
		$ordersObj->updateOrder($dataPrepared);

		// nukreipiame į pirkeju puslapį
		header("Location: index.php?module={$module}&action=list");
		die();
	} else {
		// gauname klaidų pranešimą
		$formErrors = $validator->getErrorHTML();
		// gauname įvestus laukus
		$data = $_POST;
	}
} else {
	// išrenkame elemento duomenis ir jais užpildome formos laukus.
	$data = $ordersObj->getOrders($id);
}

// įtraukiame šabloną
include 'templates/orders_form.tpl.php';

?>
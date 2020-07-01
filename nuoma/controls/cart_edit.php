<?php

include 'libraries/cart.class.php';
$cartsObj = new cart();

include 'libraries/orders.class.php';
$ordersObj = new orders();

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
                'id_KREPSELIS' => 'positivenumber',
		'Suma' => 'anything',
                'Klientas' => 'anything',
                'fk_UZSAKYMASNumeris' => 'anything');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// atnaujiname duomenis
		$cartsObj->updateCart($dataPrepared);

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
	$data = $cartsObj->getCarts($id);
}

// įtraukiame šabloną
include 'templates/cart_form.tpl.php';

?>
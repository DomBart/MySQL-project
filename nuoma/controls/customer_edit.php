<?php

include 'libraries/customer.class.php';
$customersObj = new customer();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('Vardas', 'Fotografo_tp');

// maksimalūs leidžiami laukų ilgiai
$maxLengths = array (
	'Vardas' => 30,
        'Fotografo_tp' => 30
);

// paspaustas išsaugojimo mygtukas
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
                'Pirkejo_kod' => 'positivenumber',
		'Vardas' => 'anything',
                'Fotografo_tp' => 'anything');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// atnaujiname duomenis
		$customersObj->updateCustomer($dataPrepared);

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
	$data = $customersObj->getCustomer($id);
}

// įtraukiame šabloną
include 'templates/customer_form.tpl.php';

?>
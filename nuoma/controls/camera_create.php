<?php

include 'libraries/camera.class.php';
$cameraObj = new camera();

include 'libraries/cart.class.php';
$cartsObj = new cart();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('Gamyklinis_kodas');

// maksimalūs leidžiami laukų ilgiai
$maxLengths = array (
	'Gamyklinis_kodas' => 20
);

// paspaustas išsaugojimo mygtukas
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
		'Gamyklinis_kodas' => 'anything');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// įrašome naują įrašą
		$cameraObj->insertCamera($dataPrepared);

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
include 'templates/camera_form.tpl.php';

?>
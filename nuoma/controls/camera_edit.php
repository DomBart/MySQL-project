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
	'Gamyklinis_kodas' => 30
);

// paspaustas išsaugojimo mygtukas
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
                'Gamyklinis_kodas' => 'positivenumber',
		'Tipas' => 'anything',
                'Sensorius' => 'anything',
                'Objektyvo_jungtis' => 'anything',
                'Baterija' => 'anything',
                'Kaina' => 'anything',
                'fk_KREPŠELISid_KREPSELIS' => 'positivenumber');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// atnaujiname duomenis
		$cameraObj->updateCamera($dataPrepared);

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
	$data = $cameraObj->getCamera($id);
}

// įtraukiame šabloną
include 'templates/camera_form.tpl.php';

?>
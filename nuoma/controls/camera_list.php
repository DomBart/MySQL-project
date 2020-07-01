<?php

// sukuriame markių klasės objektą
include 'libraries/camera.class.php';
$cameraObj = new camera();

include 'libraries/cart.class.php';
$cartsObj = new cart();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $cameraObj->getCameraListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio markes
$data = $cameraObj->getCameraList($paging->size, $paging->first);

// įtraukiame šabloną
include 'templates/camera_list.tpl.php';

?>
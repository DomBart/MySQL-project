<?php

// sukuriame markių klasės objektą
include 'libraries/cart.class.php';
$cartsObj = new cart();

include 'libraries/orders.class.php';
$ordersObj = new orders();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $cartsObj->getCartsListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio markes
$data = $cartsObj->getCartsList($paging->size, $paging->first);

// įtraukiame šabloną
include 'templates/cart_list.tpl.php';

?>
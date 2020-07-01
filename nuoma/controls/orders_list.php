<?php

// sukuriame markių klasės objektą
include 'libraries/orders.class.php';
$ordersObj = new orders();

include 'libraries/cart.class.php';
$cartsObj = new cart();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $ordersObj->getOrdersListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio markes
$data = $ordersObj->getOrdersList($paging->size, $paging->first);

// įtraukiame šabloną
include 'templates/orders_list.tpl.php';

?>
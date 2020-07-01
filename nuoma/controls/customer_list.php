<?php

// sukuriame markių klasės objektą
include 'libraries/customer.class.php';
$customersObj = new customer();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $customersObj->getCustomerListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio markes
$data = $customersObj->getCustomerList($paging->size, $paging->first);

// įtraukiame šabloną
include 'templates/customer_list.tpl.php';

?>
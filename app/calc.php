<?php

require_once dirname(__FILE__).'/../config.php';
require_once _ROOT_PATH.'/ZP3/lib/Smarty.class.php';

$x = $_REQUEST ['x'];
$y = $_REQUEST ['y'];
$z = $_REQUEST ['z'];



if ( ! (isset($x) && isset($y) && isset($z))) {

	$messages [] = 'Błędne wywołanie aplikacji. Brak jednego z parametrów.';
}

if ( $x == "") {
	$messages [] = 'Nie podano wartości pożyczki.';
}
if ( $y == "") {
	$messages [] = 'Nie podano ilości rat.';
}
if ( $z == "") {
	$messages [] = 'nie podano oprocentowania.';
}

if (empty( $messages )) {

	if (! is_numeric( $x )) {
		$messages [] = 'Wartość pożyczki musi zostać zapisana jako liczba.';
	}
	
	if (! is_numeric( $y )) {
		$messages [] = 'Ilość rat musi być zapisana jako liczba całkowita.';
	}	
	if (! is_numeric( $z )) {
		$messages [] = 'Oprocentowanie musi zostać zapisane jako liczba.';
	}	
}



if (empty ( $messages )) { 
	$x = floatval($x);
	$y = intval($y);
	$z = doubleval($z);
	
	$kwota = $x*($z/100);

	$wynik =  ($x+$kwota)/$y;
	$result = round($wynik,2);
	
	}


	//Smarty

	$smarty->assign('app_url',_APP_URL);
	$smarty->assign('root_path',_ROOT_PATH);
	$smarty->assign('page_title','SilverFortrax');
	$smarty->assign('page_description','Smarty or not so smarty');
	$smarty->assign('page_header','Smarty czy nie smarty?');
	
	//zmienne do smarty

	$smarty->assign('result',$result);
	$smarty->assign('messages',$messages);

	// Wywołanie szablonu
	$smarty->display(_ROOT_PATH.'/ZP3/app/calc_view.tpl');


?>
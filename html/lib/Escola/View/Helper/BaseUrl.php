<?php
class Escola_View_Helper_BaseUrl {
	function baseUrl() {
		$fc = Zend_Controller_Front::getInstance();
		return $fc->getBaseUrl();
	}
}
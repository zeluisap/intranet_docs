<?php
class Escola_Exception_IntranetException extends Exception {

    private $errors = array();

    public function __construct($message, $code = 0, Exception $previous = null) {
        parent::__construct($message, $code, $previous);
    }

    public function setErrors($errors) {
        $this->errors = $errors;
    }

    public function getErrors() {
        return $this->errors;
    }

}
<?php
class Escola_DbUtil
{
    public static function getStmt($sql, $params = null)
    {
        $db = Zend_Registry::get("db");

        if (!$db) {
            throw new Exception("Falha, Nenhuma ConexÃ£o!");
        }

        $stmt = null;
        if ($params) {
            $stmt = $db->query($sql, $params);
        } else {
            $stmt = $db->query($sql);
        }

        if (!$stmt) {
            return null;
        }

        return $stmt;
    }

    public static function listar($sql, $params = null)
    {
        $stmt = self::getStmt($sql, $params);
        if (!$stmt) {
            return null;
        }

        $objs = $stmt->fetchAll(Zend_Db::FETCH_OBJ);

        if (!Escola_Util::isResultado($objs)) {
            return null;
        }

        return $objs;
    }

    public static function first($sql, $params = null)
    {
        $stmt = self::getStmt($sql, $params);
        if (!$stmt) {
            return null;
        }

        return $stmt->fetch(Zend_Db::FETCH_OBJ);
    }

    public static function valor($sql, $params = null)
    {
        $stmt = self::getStmt($sql, $params);
        if (!$stmt) {
            return null;
        }
        $retorno = $stmt->fetch(Zend_Db::FETCH_NUM);

        if (is_array($retorno)) {
            return $retorno[0];
        }

        return $retorno;
    }

    public static function lastInsertId()
    {
        return self::valor("select LAST_INSERT_ID()");
    }

    public static function listArray($sql, $params = null)
    {
        $stmt = self::getStmt($sql, $params);
        if (!$stmt) {
            return null;
        }
        $objs = $stmt->fetchAll(Zend_Db::FETCH_NUM);

        if (!$objs) {
            return null;
        }

        $retorno = [];

        foreach ($objs as $ret) {
            if (is_array($ret)) {
                $retorno[] = $ret[0];
            } else {
                $retorno[] = $ret;
            }
        }

        return $retorno;
    }

    public static function query($sql, $params = null)
    {
        $db = Zend_Registry::get("db");

        if ($params) {
            return $db->query($sql, $params);
        } else {
            return $db->query($sql);
        }
    }

    public static function insert($sql, $params = null)
    {
        self::query($sql, $params);

        $db = Zend_Registry::get("db");

        return $db->lastInsertId();
    }
}
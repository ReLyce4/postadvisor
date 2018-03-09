<?php defined('BASEPATH') or exit('No direct script access allowed');

class Utente_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function registrazione($nome_da_visualizzare, $email, $password, $conferma_password, $tipo_utente)
    {
        $errore = null;
        $query = "SELECT email FROM tbl_users";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            if (strcmp($email, $element->email) == 0) {
                $errore = "Email già registrata";
                return $errore;
            }
        }
        $password = password_hash($password, PASSWORD_DEFAULT);
        $query = "INSERT INTO tbl_users (name, email, password, roleId) VALUES('$nome_da_visualizzare', '$email', '$password', '$tipo_utente')";
        $result = $this->db->query($query);
        return $errore;
    }

    public function login($email, $password)
    {
        $query = "SELECT role, name, email, password FROM tbl_users, tbl_roles WHERE tbl_users.roleId = tbl_roles.roleId";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            if (strcmp($email, $element->email) == 0 && password_verify($password, $element->password)) {
                return array(
                    "errore" => null,
                    "nome" => $element->name,
                    "tipo_utente" => $element->role
                );
            }
        }
        return array(
            "errore" => "Credenziali errate",
        );
    }
}

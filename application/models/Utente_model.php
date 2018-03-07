<?php defined('BASEPATH') or exit('No direct script access allowed');

class Utente_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function registrazione($email, $password, $conferma_password, $tipo_utente)
    {
        $errore = null;
        $query = "SELECT email FROM utente";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            if (strcmp($email, $element->email) == 0) {
                $errore = "Email già registrata";
                return $errore;
            }
        }
        $password = password_hash($password, PASSWORD_DEFAULT);
        $query = "INSERT INTO utente (email, password, tipo_utente) VALUES('$email', '$password', '$tipo_utente')";
        $result = $this->db->query($query);
        return $errore;
    }

    public function login($email, $password)
    {
        $query = "SELECT tipo_utente, email, password FROM users";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            if (strcmp($email, $element->email) == 0 && password_verify($password, $element->password)) {
                return array(
                    "errore" => null,
                    "tipo_utente" => $element->tipo_utente,
                );
            }
        }
        return array(
            "errore" => "Credenziali errate",
        );
    }
}

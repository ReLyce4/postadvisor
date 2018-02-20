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
        $query = "SELECT user_email FROM users";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            if (strcmp($email, $element->user_email) == 0) {
                $errore = "Email già registrata";
                return $errore;
            }
        }
        $password = password_hash($password, PASSWORD_DEFAULT);
        $query = "INSERT INTO users (user_login, user_email, user_pass, user_type) VALUES('$email', '$email', '$password', '$tipo_utente')";
        $result = $this->db->query($query);
        return $errore;
    }

    public function login($email, $password)
    {
        $query = "SELECT user_type, user_email, user_pass FROM users";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            if (strcmp($email, $element->user_email) == 0 && password_verify($password, $element->user_pass)) {
                return array(
                    "errore" => null,
                    "tipo_utente" => $element->user_type,
                );
            }
        }
        return array(
            "errore" => "Credenziali errate",
        );
    }
}

<?php defined('BASEPATH') or exit('No direct script access allowed');

class Admin_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function login($email, $password)
    {
        $query = "SELECT tipo_utente, email, password FROM utente";
        $result = $this->db->query($query);
        foreach ($result->result() as $element) {
            //3 corrisponde a tipo utente amministratore
            if (strcmp($email, $element->email) == 0 && password_verify($password, $element->password) && $element->tipo_utente == 3) {
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

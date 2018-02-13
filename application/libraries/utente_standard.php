<?php

class Utente_standard {

    private $id_utente;
    private $user_login;
    private $user_email;
    private $user_registered;
    private $user_type;

    public function __construct()
    {
        $query = "SELECT ID, user_login, user_email, user_registered, user_type FROM users WHERE email = " . $email;
        $result = $this->db->query($query);
        foreach($this as $value)
        {

        }
    }
}
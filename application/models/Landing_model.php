<?php
class Landing_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function getStatistics()
    {
        $query = "SELECT COUNT(ID) AS num FROM posts";
        $result = $this->db->query($query);
        $result = $result->row();
        $row["n_posts"] = $result->num;

        $query = "SELECT COUNT(id_testate) AS num FROM testate";
        $result = $this->db->query($query);
        $result = $result->row();
        $row["n_testate"] = $result->num;

        $query = "SELECT COUNT(DISTINCT id_aziende) AS num FROM aziende_posts";
        $result = $this->db->query($query);
        $result = $result->row();
        $row["n_aziende"] = $result->num;
        
        return $row;
    }

    public function getAziende($n_aziende)
    {
        $query = "SELECT nome, logo FROM aziende LIMIT " . $n_aziende;
        $result = $this->db->query($query);
        $x=0;
        foreach($result->result() as $temp)
        {
            $row[$x]["nome"] = $temp->nome;
            $row[$x]["logo"] = $temp->logo;
            $x++;
        }
        return $row;
    }

    public function getTestate($n_testate)
    {
        $query = "SELECT logo FROM testate LIMIT " . $n_testate;
        $result = $this->db->query($query);
        $x = 0;
        foreach($result->result() as $temp)
        {
            $row[$x] = $temp->logo;
            $x++;
        }
        return $row;
    }

    public function registrazione($email, $password, $conferma_password, $tipo_utente)
    {
        $errore = null;
        $query = "SELECT user_email FROM users";
        $result = $this->db->query($query);
        foreach($result->result() as $element)
        {
            if(strcmp($email, $element->user_email) == 0)
            {
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
        $errore = null;
        $query = "SELECT ID, user_email, user_pass FROM users";
        $result = $this->db->query($query);
        foreach($result->result() as $element)
        {
            if(strcmp($email, $element->user_email) == 0 && password_verify($password, $element->user_pass))
            {
                return $errore;
            }
        }
        return $errore = "Credenziali non corrette";
    }
}
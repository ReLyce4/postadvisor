<?php defined('BASEPATH') or exit('No direct script access allowed');

class Landing_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function get_statistiche()
    {
        $query = "SELECT COUNT(id_ad) AS num FROM ad";
        $result = $this->db->query($query);
        $result = $result->row();
        $row["n_ad"] = $result->num;

        $query = "SELECT COUNT(id_testata) AS num FROM testata";
        $result = $this->db->query($query);
        $result = $result->row();
        $row["n_testata"] = $result->num;

        $query = "SELECT COUNT(DISTINCT userId) AS num FROM users_testata_ad";
        $result = $this->db->query($query);
        $result = $result->row();
        $row["n_cliente"] = $result->num;

        return $row;
    }

    public function get_dati_base_azienda($n_azienda)
    {
        $query = "SELECT nome, logo FROM azienda LIMIT " . $n_azienda;
        $result = $this->db->query($query);
        $x = 0;
        foreach ($result->result() as $temp) {
            $row[$x]["nome"] = $temp->nome;
            $row[$x]["logo"] = $temp->logo;
            $x++;
        }
        return $row;
    }

    public function get_logo_testata($n_testate)
    {
        $query = "SELECT logo FROM testata LIMIT " . $n_testate;
        $result = $this->db->query($query);
        $x = 0;
        foreach ($result->result() as $temp) {
            $row[$x] = $temp->logo;
            $x++;
        }
        return $row;
    }
}

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
}
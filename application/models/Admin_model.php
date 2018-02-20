<?php defined('BASEPATH') or exit('No direct script access allowed');

class Admin_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function upload_articolo($titolo, $contenuto, $autore, $data, $tags, $media)
    {
        $query = "INSERT INTO articoli (titolo, contenuto, autore, data) VALUES('$titolo', '$contenuto', '$autore', '$data')";
        $this->db->query($query);
        $query = "SELECT id_articoli FROM articoli ORDER BY id_articoli DESC LIMIT 1";
        $result = $this->db->query($query);
        $id_articoli = $result->row()->id_articoli;
        if (count($media) > 1) { //Verifica se l'utente ha caricato più di un media
            foreach($media as $i)
            {
                $query = "INSERT INTO media (url, id_articolo) VALUES('$i', '$id_articoli')";
                $result = $this->db->query($query);
            }
        } else {
            $query = "INSERT INTO media (url, id_articolo) VALUES('$media[0]', '$id_articoli')";
            $result = $this->db->query($query);
        }
        if (count($tags) > 1) { //Verifica se l'utente ha specificato più di un tag
            foreach($tags as $nome_tag)
            {
                $query = "INSERT IGNORE INTO tags VALUES(null, '$nome_tag')";
                $result = $this->db->query($query);
            }
            $query = "SELECT id_tags FROM tags ORDER BY id_tags DESC LIMIT " . count($tags);
            $result = $this->db->query($query);
            foreach($result->result() as $id_tags)
            {
                $query = "INSERT INTO articoli_tags VALUES('$id_articoli', '$id_tags->id_tags')";
                $result = $this->db->query($query);
            }
        } else {
            $query = "INSERT IGNORE INTO tags VALUES(null, '$tags[0]')";
            $result = $this->db->query($query);
            $query = "SELECT id_tags FROM tags ORDER BY id_tags DESC LIMIT 1";
            $result = $this->db->query($query);
            $id_tags = $result->row()->id_tags;
            $query = "INSERT INTO articoli_tags VALUES('$id_articoli', '$id_tags')";
            $result = $this->db->query($query);
        }
    }
}

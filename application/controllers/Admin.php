<?php defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('url_helper');
        $this->load->helper('form_helper');
        $config['upload_path'] = FCPATH . 'assets\img\upload';
        $config['allowed_types'] = 'gif|jpg|png|mp4';
        $this->load->library('upload', $config);
        $this->load->library('MY_Upload');
        $this->load->model('admin_model');
    }

    public function index()
    {
        echo "Pagina vuota";
    }

    public function inserimento($default = "articolo")
    {
        $data["error"] = "";
        $this->load->view('header');
        $this->load->view('in_articolo', $data);
        $this->load->view('footer');
    }

    public function upload()
    {
        $titolo = $this->input->post('titolo');
        $contenuto = $this->input->post('contenuto');
        $autore = $this->input->post('autore');
        $data = $this->input->post('data');
        $tags = $this->input->post('tags');
        $media = $_FILES["media"]["name"];
        $tags = explode(";", $tags);
        $this->admin_model->upload_articolo($titolo, $contenuto, $autore, $data, $tags, $media);
        exit;

        if (!$this->upload->do_multi_upload('media')) {
            $esito = array('esito' => $this->upload->display_errors());
            $this->load->view('header');
            $this->load->view('esito', $esito);
            $this->load->view('footer');
        } else {
            $data = array('upload_data' => $this->upload->data());
            $esito["esito"] = "Caricamento avvenuto con successo";
            $this->load->view('header');
            $this->load->view('esito', $esito);
            $this->load->view('footer');
        }
    }
}

<?php defined('BASEPATH') or exit('No direct script access allowed');

class Landing extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Landing_model");
        $this->load->helper('url');
        $this->load->helper('url_helper');
    }

    public function index()
    {
        $data["statistics"] = $this->Landing_model->get_statistiche();
        $data["aziende"] = $this->Landing_model->get_dati_base_aziende(3); // 3 è il numero di aziende da mostrare sulla landing page
        $data["testate"] = $this->Landing_model->get_dati_base_testate(6); // 6 è il numero di testate giornalistiche da mostrare sulla landing page
        $this->load->view('header');
        $this->load->view('landing', $data);
        $this->load->view('footer');
    }

    public function view($uri = null)
    {
        if (is_null($uri)) {
            header("Location: " . base_url());
            exit;
        }
        $this->load->view('header');
        $this->load->view($uri);
        $this->load->view('footer');
    }
}

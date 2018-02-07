<?php
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
		$data["statistics"] = $this->Landing_model->getStatistics();
		$data["aziende"] = $this->Landing_model->getAziende(3);
		$data["testate"] = $this->Landing_model->getTestate(6);
		$this->load->view('header');
		$this->load->view('landing', $data);
		$this->load->view('footer');
	}

	public function view($uri = "login")
	{
		$this->load->view('header');
		$this->load->view($uri);
		$this->load->view('footer');
	}
}

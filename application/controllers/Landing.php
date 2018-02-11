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
		$data["aziende"] = $this->Landing_model->getAziende(3); // 3 è il numero di aziende da mostrare sulla landing page
		$data["testate"] = $this->Landing_model->getTestate(6); // 6 è il numero di testate giornalistiche da mostrare sulla landing page
		$this->load->view('header');
		$this->load->view('landing', $data);
		$this->load->view('footer');
	}

	public function view($uri = null)
	{
		if(is_null($uri))
		{
			header("Location: " . base_url());
			exit;
		}
		$this->load->view('header');
		$this->load->view($uri);
		$this->load->view('footer');
	}

	public function registrazione($default = null)
	{
		$errore = $this->Landing_model->registrazione($_POST["email"], $_POST["password"], $_POST["conferma_password"], $_POST["tipo_utente"]);

		if(!is_null($errore))
		{
			echo $errore;
		}
		else
		{
			echo "Registrazione avvenuta con successo";
		}
	}

	public function login($default = null)
	{
		$errore = $this->Landing_model->login($_POST["email"], $_POST["password"]);
		if(!is_null($errore))
		{
			echo $errore;
		}
		else
		{
			header("Location: " . base_url());
		}
	}
}

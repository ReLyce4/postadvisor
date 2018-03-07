<?php defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('url_helper');
        $this->load->helper('form_helper');
        $this->load->model('admin_model');
        $this->load->library('grocery_CRUD');
    }

    public function index()
    {
        if($_SESSION['is_logged']) {
            $this->load->view('admin/header');
            $this->load->view('admin_home');
            $this->load->view('admin/footer');
        } else {
            header("Location: " . base_url('admin/view/admin_login'));
        }
    }

    public function login($default = null)
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $email = $_POST["email"];
            $login_data = $this->admin_model->login($email, $_POST["password"]);
            if (!is_null($login_data["errore"])) {
                echo $login_data["errore"];
            } else {
                $_SESSION["email"] = $email;
                $_SESSION["tipo_utente"] = $login_data["tipo_utente"];
                header("Location: " . base_url('admin/view/admin_home'));
            }
        } else {
            echo "Errore 502 Bad Gateway";
        }
    }

    public function view($page = null)
    {
        if (is_null($page)) {
            header("Location: " . base_url('admin/view/login'));
            exit;
        }
        elseif (strcasecmp($page, 'login') == 0) {
            $this->load->view('login');
        } else {
            $this->load->view('admin/header');
            $this->load->view($page);
            $this->load->view('admin/footer');
        }
    }

    public function tabella($table_name)
	{
		$crud = new grocery_CRUD();
		$crud->set_table($table_name);
		$output = $crud->render();
        $this->load->view('admin/header', $output);
        $this->load->view('tabella');
        $this->load->view('admin/footer');
	}
}

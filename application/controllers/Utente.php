<?php defined('BASEPATH') or exit('No direct script access allowed');

class Utente extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("utente_model");
        $this->load->helper('url');
        $this->load->helper('url_helper');
    }

    public function index()
    {
        if(isset($_SESSION["loggato"]) && $_SESSION["loggato"] == TRUE) {
            header("Location: " . base_url());
        } else {
            header("Location: " . base_url('view/login'));
        }
    }

    public function registrazione($default = null)
    {
        $errore = $this->utente_model->registrazione($_POST["nome_da_visualizzare"], $_POST["email"], $_POST["password"], $_POST["conferma_password"], $_POST["tipo_utente"]);

        if (!is_null($errore)) {
            echo $errore;
        } else {
            echo "Registrazione avvenuta con successo<br />";
            echo '<a href="' . base_url("landing/view/login") . '">Vai al login</a>';
        }
    }

    public function login($default = null)
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $email = $_POST["email"];
            $login_data = $this->utente_model->login($email, $_POST["password"]);
            if (!is_null($login_data["errore"])) {
                echo $login_data["errore"];
            } else {
                $_SESSION["nome"] = $login_data["nome"];
                $_SESSION["email"] = $email;
                $_SESSION["tipo_utente"] = $login_data["tipo_utente"];
                $_SESSION["loggato"] = TRUE;
                header("Location: " . base_url());
            }
        } else {
            echo "Errore 502 Bad Gateway";
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        header("Location: " . base_url());
    }
}
//pagina di login nel controller "Utente"
<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?=base_url("/assets/img/apple-icon.png")?>">
    <link rel="icon" type="image/png" href="<?=base_url("/assets/img/logo.jpg")?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Postadvisor</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="<?=base_url("/assets/css/bootstrap.min.css")?>" rel="stylesheet" />
    <link href="<?=base_url("/assets/css/now-ui-kit.css?v=1.1.0")?>" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-success fixed-top" color-on-scroll="400">
        <div class="container" class="bg-success">
            <div class="navbar-translate">
					<img src="<?=base_url("/assets/img/logo3.png")?>" style="width: 200px;">
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="<?=base_url("/assets/img/blurred-image-1.jpg")?>">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            <i class="now-ui-icons travel_info"></i>
                            <p>Chi siamo</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" target="_blank">
                            <i class="now-ui-icons files_paper"></i>
                            <p>Il nostro servizio</p>
                        </a>
                    </li>
					<li class="nav-item">
                        <a class="nav-link" href="#" target="_blank">
                            <i class="now-ui-icons ui-1_email-85"></i>
                            <p>Contattaci</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url("landing/view/login")?>">
                            <i class="now-ui-icons users_circle-08"></i>
                            <p>Accedi</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url("landing/view/registrazione")?>">
                            <i class="now-ui-icons users_circle-08"></i>
                            <p>Registrati</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
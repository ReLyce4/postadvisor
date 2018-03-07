<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin panel</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=base_url('assets/vendor/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?=base_url('assets/css/simple-sidebar.css')?>" rel="stylesheet">

    <link href="<?=base_url("/assets/css/now-ui-kit.css?v=1.1.0")?>" rel="stylesheet" />

    <!-- Include di Grocery -->
    <link type="text/css" rel="stylesheet" href="http://localhost/postadvisor-wip/assets/grocery_crud/themes/flexigrid/css/flexigrid.css" />
 
 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/js/jquery-1.11.1.min.js"></script>

 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/js/jquery_plugins/jquery.numeric.min.js"></script>

 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/js/jquery_plugins/config/jquery.numeric.config.js"></script>

 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/js/jquery_plugins/jquery.form.min.js"></script>

 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/themes/flexigrid/js/flexigrid-edit.js"></script>

 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/js/jquery_plugins/jquery.noty.js"></script>

 <script src="http://localhost/postadvisor-wip/assets/grocery_crud/js/jquery_plugins/config/jquery.noty.config.js"></script>


</head>

<body>

    <div id="wrapper" class="toggled">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        <?=$_SESSION["email"]?>
                    </a>
                </li>
                <li>
                    <a href="<?=base_url('admin/tabella/testata')?>">Testata</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">


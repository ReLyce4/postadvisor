<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin login</title>

    <!-- Bootstrap core CSS -->
    <link href="http://localhost/postadvisor-wip/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="http://localhost/postadvisor-wip/assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />


</head>

<body>

<div class="wrapper">
        <div class="main">
            <div class="section section-signup" style="background-image: url('assets/img/bg11.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
                <div class="container">
                    <div class="row">
                        <div class="card card-signup" data-background-color="green">
                            <form class="form" method="post" action="http://localhost/postadvisor-wip/admin/login">
                                <div class="header text-center">
                                    <h4 class="title title-up">Accesso amministrazione</h4>
                                </div>
                                <div class="card-body">
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                        <i class="now-ui-icons ui-1_email-85"></i>
                                        </span>
                                        <input type="email" name="email" class="form-control" placeholder="Email" required>
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons ui-1_lock-circle-open"></i>
                                        </span>
                                        <input type="password" name="password" placeholder="Password" class="form-control" required>
                                    </div>
                                </div>
                                <div class="footer text-center">
                                    <button type="submit" class="btn btn-neutral btn-round btn-lg">Accedi</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

    <!-- Bootstrap core JavaScript -->
    <script src="http://localhost/postadvisor-wip/assets/vendor/jquery/jquery.min.js"></script>
    <script src="http://localhost/postadvisor-wip/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
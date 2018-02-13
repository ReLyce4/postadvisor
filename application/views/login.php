<div class="wrapper">
        <div class="main">
            <div class="section section-signup" style="background-image: url('assets/img/bg11.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
                <div class="container">
                    <div class="row">
                        <div class="card card-signup" data-background-color="green">
                            <form class="form" method="post" action="<?=base_url("utente/login")?>">
                                <div class="header text-center">
                                    <h4 class="title title-up">Login</h4>
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
                                    <button type="submit" class="btn btn-neutral btn-round btn-lg">Invia</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
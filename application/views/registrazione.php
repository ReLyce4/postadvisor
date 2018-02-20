<div class="wrapper">
        <div class="main">
            <div class="section section-signup" style="background-image: url('assets/img/bg11.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
                <div class="container">
                    <div class="row">
                        <div class="card card-signup" data-background-color="green">
                            <form class="form" method="post" action="<?=base_url("utente/registrazione")?>">
                                <div class="header text-center">
                                    <h4 class="title title-up">Registrazione</h4>
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
                                        <input id="password" name="password" type="password" placeholder="Password" class="form-control" required>
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons arrows-1_refresh-69"></i>
                                        </span>
                                        <input id="conferma_password" type="password" name="conferma_password" placeholder="Ripeti password" class="form-control" oninput="check(this)" required>
                                    </div>
                                    <script language='javascript' type='text/javascript'>
                                        function check(input) {
                                            if (input.value != document.getElementById('password').value) {
                                                input.setCustomValidity('Le password devono essere uguali.');
                                            } else {
                                                // L'input è valido -- reset del messaggio di errore
                                                input.setCustomValidity('');
                                            }
                                        }
                                    </script>
                                    <div class="input-group form-group-no-border">
                                        <select name="tipo_utente" class="form-control">
                                            <option value="1">Azienda</option>
                                            <option value="2">Testata</option>
                                            <option value="3">Standard</option>
                                        </select>
                                    </div>
                                    <!-- If you want to add a checkbox to this form, uncomment this code -->
                                    <!-- <div class="checkbox">
	  								<input id="checkboxSignup" type="checkbox">
	  									<label for="checkboxSignup">
	  									Unchecked
	  									</label>
	  						  		</div> -->
                                </div>
                                <div class="footer text-center">
                                    <button type="submit" class="btn btn-neutral btn-round btn-lg">Invia</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

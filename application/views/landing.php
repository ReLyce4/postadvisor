<div class="wrapper">
        <div class="page-header clear-filter" filter-color="green">
            <div class="page-header-image" data-parallax="true" style="background-image: url('./assets/img/header.jpg');">
            </div>
            <div class="container">
                <div class="content-center brand">
                    
                    <h1 class="h1-seo"><strong>Postadvisor</strong></h1>
                    <h3>Scegli i migliori siti e condividi i tuoi contenuti</h3>
                    
                </div>
            </div>
        </div>
        <div class="main">
            <div class="section section-basic">
                <div class="container">
                    <div class="row statistics">
                        <div class="col-md-4">
                            <?=$statistics["n_posts"]?><br />Articoli pubblicati
                        </div>
                        <div class="col-md-4 border-side">
                        <?=$statistics["n_aziende"]?><br />Aziende supportate
                        </div>
                        <div class="col-md-4">
                        <?=$statistics["n_testate"]?><br />Testate giornalistiche
                        </div>
                    </div>
                    <hr />
                    <br />
                    <h2 class="title">Cosa facciamo</h2>
                    <div id="buttons">
                        <p class="category">Descrizione semplice e veloce del servizio in modo molto accattivante e così facendo possiamo accaparrarci un sacco di clienti!!!</p>
                        <div class="section" id="carousel">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-8">
                                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                            </ol>
                                            <div class="carousel-inner" role="listbox">
                                                <div class="carousel-item active">
                                                    <img class="d-block" src="assets/img/bg1.jpg" alt="First slide">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h5>Nature, United States</h5>
                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="d-block" src="assets/img/bg3.jpg" alt="Second slide">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h5>Somewhere Beyond, United States</h5>
                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="d-block" src="assets/img/bg4.jpg" alt="Third slide">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h5>Yellowstone National Park, United States</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                <i class="now-ui-icons arrows-1_minimal-left"></i>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                <i class="now-ui-icons arrows-1_minimal-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p style="text-align: center;"><button class="btn btn-success">Learn More</button></p>
                        <div class="row">
                            <div class="col-md-10">
                            </div>
                        </div>
                        
                        <h2 class="title">Aziende famose che hanno usufruito del nostro servizio</h2>
                        <div class="row">
                        <?php for($x = 0; $x < 3; $x++) : ?>
                            <div class="col-sm-4">
                                    <p class="category" style="text-align:center";><?=$aziende[$x]["nome"]?></p>
                                    <img src="<?=$aziende[$x]["logo"]?>" alt="Circle Image" class="rounded-circle">
                                    <!-- <p class="paragraph" style="margin-top: 25px;">Elogiamo la nostra partnership in qualsiasi maniera possibile</p> -->
                            </div>
                        <?php endfor ?>
              </div>
            
            <div class="container" style="margin-top: 20px;">
                    <h2 class="title">Testate giornalistiche più rinomate</h2>
                <div class="row">
                <?php for($x = 0; $x < 6; $x++) : ?>
                    <div class="col-md-2">
                            <img src="<?=$testate[$x]?>" alt="Circle Image" class="image">
                    </div>
                <?php endfor ?>
                    
                </div>
            </div>
                
  
            <div class="section section-signup" style="background-image: url('assets/img/bg11.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
                <div class="container">
                    <div class="row">
                        
                        <div class="card card-signup" data-background-color="green">
                            <form class="form" method="" action="">
                                <div class="header text-center">
                                    <h4 class="title title-up">Contattaci</h4>
                                    <div class="social-line">
                                        <a href="#pablo" class="btn btn-neutral btn-twitter btn-icon btn-round">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-neutral btn-facebook btn-icon btn-lg btn-round">
                                            <i class="fa fa-facebook-square"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-neutral btn-instagram btn-icon btn-round">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="card-body">
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons users_circle-08"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Nome">
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons text_caps-small"></i>
                                        </span>
                                        <input type="text" placeholder="Cognome" class="form-control" />
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons ui-1_email-85"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Email">
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
                                    <a href="#pablo" class="btn btn-neutral btn-round btn-lg">Invia</a>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        
        <!-- Sart Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                        </button>
                        <h4 class="title title-up">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default">Nice Button</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--  End Modal -->
        <!-- Mini Modal -->
        <div class="modal fade modal-mini modal-primary" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <div class="modal-profile">
                            <i class="now-ui-icons users_circle-08"></i>
                        </div>
                    </div>
                    <div class="modal-body">
                        <p>Always have an access to your profile</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-link btn-neutral">Back</button>
                        <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--  End Modal -->
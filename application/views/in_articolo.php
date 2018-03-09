<div class="wrapper">
        <div class="main">
            <div class="section section-signup" style="background-image: url('assets/img/bg11.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
                <div class="container">
                    <div class="row">
                        <div class="card card-signup" data-background-color="green" style="min-width: 700px;">
                            <?=$error?>
                            <?=form_open_multipart('admin/upload');?>
                                <div class="header text-center">
                                    <h4 class="title title-up">Inserimento articolo</h4>
                                </div>
                                <div class="card-body">
                                    <label style="margin-left:4px" class="title title-up">Media</label>
                                    <div class="input-group form-group-no-border">
                                        <input type="file" name="media[]" class="form-control" multiple>
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <input type="text" placeholder="Tags" name="tags" class="form-control" maxlenght="50">
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <input type="text" name="titolo" placeholder="Titolo" class="form-control" required>
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <textarea name="contenuto" class="form-control" col="50" row="5" required>Testo</textarea>
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <input type="text" placeholder="Autore" name="autore" class="form-control" required>
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <input type="date" name="data" value="<?=date("Y-m-d")?>" class="form-control" required>
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

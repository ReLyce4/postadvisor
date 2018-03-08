<div class="content-wrapper">    
    <section class="content-header">
      <h1>
        <?=ucfirst($table_name)?>
        <small>Vista tabella</small>
      </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-center">
                <div style='height:20px;'></div>  
                <div>
                    <?php echo $content->output; ?>
                </div>
            </div>
        </div>
    </section>
</div>
<?php echo $header; ?>
<div class="login-page">
<?php echo $column_left; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <div id="strinfo">


  <?php echo $description; ?>        <div class="share">
		<!-- AddThis Button BEGIN -->
			<div class="share42init" data-image="<?php echo $thumb; ?>"></div>
			<script type="text/javascript" src="catalog/view/javascript/jquery/share42/share42.js"></script> 
		<!-- AddThis Button END --> 
        </div>


		
		
		</div>

  <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?>
  </div>
<?php echo $footer; ?>
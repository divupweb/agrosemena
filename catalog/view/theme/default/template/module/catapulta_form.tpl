<div class="catapulta">
	<h2 class="catapulta-title"><?php echo $heading_title; ?></h2>
	<?php if(isset($error_warning)) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	<?php if($stock_status) { ?>
		<?php if(isset($text_customer)) { ?>
			<?php echo $text_customer; ?>
		<?php } else { ?>
			<b><?php echo $entry_contact; ?></b><br /><br />
			<?php if($phone_text) { ?>
			<span><?php echo $phone_text; ?></span><br />
                        <span>Телефон, <span style="color:red;">*E-mail(обязательно)</span> - для уточнения деталей доставки товара.</span>
			<?php } ?>
			<br /><br /> <div class="cnopbut" style="padding-left: 10px;"><input type="text" name="catapulta_contact" value="" data-phone-mask="<?php echo $phone_mask; ?>" /></div>
			<br class="contact_error" />
			<br />
			<div class="buttons">
				<div class="left"><a class= "catapulta-send button" data-wait="<?php echo $text_wait; ?>"><?php echo $button_send; ?></a></div>
			</div>
		<?php } ?>
	<?php } ?>
</div>
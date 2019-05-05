<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart">
                        
                              <?php if (!$product['quantity'] && $waitlist_enabled) { ?>
                                <div class="waitlist-not-available"><?php echo $text_not_available;?></div>
                                <div class="waitlist-add">
                                  <?php if ($product['already_in_waitlist']) { ?>
                                    <?php echo $text_already_waitlist; ?>
                                  <?php } else { ?>
                                    <a onclick="addToWaitList('<?php echo $product['product_id']; ?>');"><?php echo $text_notify_available; ?></a>
                                  <?php } ?>
                                </div>
                              <?php } else { ?>
                                <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a>
                              <?php } ?>
                        
                    </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>

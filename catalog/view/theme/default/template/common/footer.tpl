<div class="mail-con" style="display: none;">
	<?php echo $mailchimp; ?> 
</div>
<div id="footer-area">
<?php 
	// Please get license key for this mailchimp extension before use it thanks
	/*if($mailchimp){ ?>
	<div class="newsletter-section text-center">
		<?= $mailchimp; ?>
	</div>
<?php }*/ ?>

<footer>
	<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

	<link href="catalog/view/javascript/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />

	<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/sass/mystylesheet.css" rel="stylesheet">

	<?php /* // combined to combined.min.css ?>
	<!-- <link href="catalog/view/javascript/smartmenus/sm-core-css.min.css" rel="stylesheet"> --> <!--Added in sidr_bare_sm_core_css_sass_icon.css -->
	<link href="catalog/view/javascript/smartmenus/sm-blue.min.css" rel="stylesheet">
	<!-- <link href="catalog/view/javascript/side-menu-sidr/stylesheets/sidr.bare.min.css" rel="stylesheet"> --> <!--Added in sidr_bare_sm_core_css_sass_icon.css -->
	<link href="catalog/view/javascript/jquery-multi-level-accordion-menu/css/style.min.css" rel="stylesheet">

	<link href="catalog/view/theme/default/stylesheet/normalize.min.css" rel="stylesheet">
	<!-- <link href="catalog/view/theme/default/stylesheet/sass/icon.min.css" rel="stylesheet"> --> <!--Added in sidr_bare_sm_core_css_sass_icon.css -->
	<link href="catalog/view/theme/default/stylesheet/sidr_bare_sm_core_css_sass_icon.css" rel="stylesheet">

	<link href="catalog/view/javascript/aos/aos.css" rel="stylesheet">

	<link href="catalog/view/javascript/sweetalert2.min.css" rel="stylesheet">
	<?php */ // combined to combined.min.css ?>

	<?php /* seldom use */ /* ?>
	<link href="catalog/view/theme/default/stylesheet/animate.min.css" rel="stylesheet">
	<?php */ ?>

	<link href="catalog/view/theme/default/stylesheet/combined.min.css" rel="stylesheet">

	<link href="catalog/view/theme/default/stylesheet/sass/helper.min.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/sass/custom.min.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/pagination-breadcrumb.css" rel="stylesheet">

	<?php if($class != 'common-home') { ?>
	<link href="catalog/view/theme/default/stylesheet/slsoffr.min.css" rel="stylesheet">
	<?php } ?>

	<?php foreach ($styles as $style) { ?>
		<link href="<?=$style['href']; ?>" type="text/css" rel="<?=$style['rel']; ?>" media="<?=$style['media']; ?>" />
	<?php } ?>

	<script defer="defer" src="https://cdn.jsdelivr.net/npm/vanilla-lazyload@17.3.0/dist/lazyload.min.js"></script>
	<script>
	$(window).load(function() {
		var lazyLoadInstance = new LazyLoad({
		// Your custom settings go here
		});
	});
	</script>

	<div class="container">
		<div class="footer-upper-contet">

			<div class="footer-contact-info">
				<?php if ($icon) { ?>
					<a class="footer-logo-image">
						<img src="<?=$icon; ?>" alt="Bloom Fashion" class="img-responsive" />
					</a>
				<?php } ?>
				<div class="footer-comment">
					<p><?php echo $comment; ?></p>
				</div>
			</div>

			<?php if ($menu) { ?>
				<?php foreach($menu as $menu_count => $links){ ?>
					<div class="footer-contact-links">
						<h5>
							<?php if($links['href'] != '#'){ ?>
							<?= $links['name']; ?>
							<?php }else{ ?>
							<a href="<?= $links['href']; ?>" 
								<?php if($links['new_tab']){ ?>
									target="_blank"
								<?php } ?>
								>
								<?= $links['name']; ?></a>
							<?php } ?>
						</h5>
						<?php if($links['child']){ ?>
						<ul class="list-unstyled">
							<?php foreach ($links['child'] as $each) { ?>
							<li><a href="<?= $each['href']; ?>"
								<?php if($each['new_tab']){ ?>
									target="_blank"
								<?php } ?>
								
								>
									<?= $each['name']; ?></a></li>
							<?php } ?>
						</ul>
						<?php } ?>
					</div>
				<?php } ?>
			<?php } ?>

			<?php if($social_icons){ ?>
				<div class="socmed">
					<h5>Connect</h5>
					<div class="footer-social-icons">
						<?php foreach($social_icons as $icon){ ?>
						<a href="<?= $icon['link']; ?>" title="<?= $icon['title']; ?>" alt="
									<?= $icon['title']; ?>" target="_blank">
							<img data-src="<?= $icon['icon']; ?>" title="<?= $icon['title']; ?>" class="img-responsive lazy" alt="<?= $icon['title']; ?>" /><?= $icon['title']; ?>
						</a>
						<?php } ?>
					</div>
				</div>
			<?php } ?>
		</div>
		
	</div>
	<div class="footer-bottom">
		<p><?= $powered; ?></p>
		<p><?= $text_fcs; ?></p>
	</div>
</footer>
</div>
<div id="ToTopHover" ></div>

<?php if(isset($update_price_status) && $update_price_status) { ?>
	<script type="text/javascript">
    $(".product-inputs input[type='checkbox']").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs input[type='radio']").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs select").change(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs .input-number").blur(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs .input-number").parent(".input-group").find(".btn-number").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    function changePrice(product_id) {
      $.ajax({
        url: 'index.php?route=product/product/updatePrice&product_id=' + product_id,
        type: 'post',
        dataType: 'json',
        data: $('#product-'+ product_id + ' input[name=\'quantity\'], #product-'+ product_id + ' select, #product-'+ product_id + ' input[type=\'checkbox\']:checked, #product-'+ product_id + ' input[type=\'radio\']:checked'),
        success: function(json) {
          $('.alert-success, .alert-danger').remove();
          if(json['new_price_found']) {
            $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
            $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
          } else {
            $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
            $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
          }
        }
      });
    }
	</script>
<?php } ?>
<script>
$(window).load(function(){
	AOS.init({
		once: true
	});
});
</script>

<script>
    <?php /* Persisting any click IDs */ ?>
    if (typeof(Storage) !== "undefined") {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        for (const [key, value] of urlParams) {
            window.localStorage.setItem(key, value);
        }
        <?php /* Uncomment this to see contents of localStorage */ ?>
        for(let i=0; i<localStorage.length; i++) {
            let key = localStorage.key(i);
            //console.log(`${key}: ${localStorage.getItem(key)}`);
        }
        <?php /* Uncomment this to see contents of localStorage */ ?>
    }
</script>
<script type="text/javascript">
	$('.checkout-cart .buttons .pull-left a').addClass('btn-primary');
	$('.account-edit .buttons .pull-left a').addClass('btn-primary');
	$('.account-address .buttons .pull-left a').addClass('btn-primary');
	$('.cart-dorpdown-footer .btn-default').addClass('btn-primary');
	$('.glyphicon-plus').removeClass('glyphicon');
</script>
<?php 
/* extension bganycombi - Buy Any Get Any Product Combination Pack */
echo $bganycombi_module; 
?>
</body></html>
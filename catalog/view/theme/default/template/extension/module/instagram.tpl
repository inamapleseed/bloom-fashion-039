<div class="row">
	<div class="module-instagram">
		<?php if(!empty($instagrams)) {?>
		<?php if($entry_instagram) { ?>
		<div class="section-title text-center pd-md-t60">
			<?php echo "<h2>".$entry_instagram."</h2>"; ?>
			<div class="leaf_background"></div>
		</div>
		<?php } ?>
		<div class="instagram">

			<?php foreach ($instagrams as $instagram){ ?>
			<div class="item <?php echo $hover_effect;?>">
				<a href="<?php echo $instagram['href'];?>" target="_blank" data-like="<?php echo $instagram['likes'];?>" title="<?php echo $instagram['text'];?>">
					<i class="fa fa-heart" aria-hidden="true"></i>
					<?php /* ?>
					<img src="<?php echo $instagram['img'];?>" alt="<?php echo $instagram['text'];?>" title="<?php echo $instagram['text'];?>">
					<?php */ ?>
					<div class="lazy" data-bg="<?php echo $instagram['img'];?>" style="background-size:cover; background-position:center; background-repeat:no-repeat; padding-bottom:100%;"></div>
					<span class="overlay">
						<i class="fa fa-instagram" aria-hidden="true"></i>
						<div>Follow us</div>
						<div>@<?php echo $das_name; ?></div>
					</span>
				</a>
			</div>
			<?php } ?>

		</div>
		<div class="ig-btn">
			<a href="https://www.instagram.com/bloom.fashion" target="_blank" class="btn btn-fancy">Follow Us on Instagram</a>
		</div>
		<?php } ?>
	</div>
</div>

<style>
	.module-instagram .slick-prev:before,
	.module-instagram .slick-next:before {
		color: <?php echo $color;
		?>;
	}

	.module-instagram h4 {
		text-align: <?php echo $text_align;
		?>
	}

	.instagram .item .fa:before {
		color: <?php echo $heart_color;
		?>
	}

	.instagram .item a:before {
		color: <?php echo $heart_text_color;
		?>
	}

	<?php if($center_mode): ?>.slick-slide {
		opacity: .2;
		transition: opacity .3s linear 0s;
	}

	.slick-slide.slick-active.slick-center {
		opacity: 1;
	}

	<?php endif;
	?>
</style>

<script>
	$(window).load(function(){
		$('.module-instagram .instagram').slick({
			slidesToShow: <?php echo $slidesToShow;?>,
			slidesToScroll: <?php echo $slidesToScroll ?>,
			autoplay: false,
			autoplaySpeed: <?php echo $autoplaySpeed; ?>,
			dots: <?php echo $dots; ?>,
			arrows: <?php echo $arrows; ?>,
	          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/general/prev-white.png' alt='arrow' class='arrow'/></div></div>",
	          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/general/next-white.png' alt='arrow' class='arrow'/></div></div>",
			<?php echo ($center_mode) ? "centerMode : $center_mode," : ''; ?>
			responsive: [{
					breakpoint: 1024,
					settings: {
						slidesToShow: <?php echo $slidesToShow; ?>,
						slidesToScroll: <?php echo $slidesToScroll ?>,
						infinite: true,
						arrows: false
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: <?php echo $slidesToShowTablet; ?>,
						slidesToScroll: <?php echo $slidesToScrollTablet; ?>,
						arrows: false,
						dots: true,
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: <?php echo $slidesToShowCelphone; ?>,
						slidesToScroll: <?php echo $slidesToScrollCelphone; ?>,
						arrows: false,
						dots: true,
					}
				}
			]
		});
	});
</script>
<div class="product-gutter" id="product-<?=$product_id?>"> <?php /* product option in product component :: add product id to div  */ ?>
	<div class="product-block <?= $out_of_stock; ?>">
		<div class="product-image-block relative">
			<?php if($sticker && $sticker['name']){ ?>
			<a 
				href="<?= $href; ?>" 
				title="<?= $name; ?>" 
				class="sticker absolute <?= $sticker['image'] ? 'sticker-image':''; ?>" 
				style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
					<?php if($sticker['image']){ ?>
					    <img src="<?= $sticker['image'] ?>" />
					<?php } else { 
					    echo $sticker['name']; 
					} ?>
			</a>
			<?php } ?>

			<?php if($show_special_sticker){ ?>
			<a 
			href="<?= $href; ?>" 
			title="<?= $name; ?>" 
			class="sticker absolute" 
			style="top:<?= $sticker ? '50px' : '15px' ?>; color: #fff; background-color: #BE4F55;">
				<?= $text_sale; ?>
			</a>
			<?php } ?>
			<a 
				href="<?= $href; ?>" 
				title="<?= $name; ?>" 
				class="product-image image-container relative" >
				<img 
					src="<?= $thumb; ?>" 
					alt="<?= $name; ?>" 
					title="<?= $name; ?>"
					class="img-responsive img1 prod-image<?= $product_id; ?>" />
						<img 
						src="<?= $thumb2; ?>" 
						alt="<?= $name; ?>" 
						title="<?= $name; ?>"
						class="img3 prod-hover<?= $product_id; ?>" style="opacity: 0"/>
				<?php if($thumb2 && $hover_image_change) { ?>
					<div class="hovered-image">
						<img 
						src="<?= $thumb2; ?>" 
						alt="<?= $name; ?>" 
						title="<?= $name; ?>"
						class="img-responsive img2 prod-hover<?= $product_id; ?>" style="opacity: 0"/>
					</div>
				<?php } ?>
			</a>

			<div class="btn-group product-button">
			    <a href="<?php echo $href; ?>" class="overlay-tag"></a>
				<button type="button" onclick="wishlist.add('<?= $product_id; ?>');" class="btn wishlist-btn product_wishlist_<?= $product_id; ?>">
					<i class="front-face fa <?= in_array($product_id, $wishlist) ?'fa-heart':'fa-heart-o';?>"></i>
					<i class="fa-heart fa back-face"></i>
				</button>

				<?php if ($options) { ?>
					<button type="button"
						<?php if($enquiry){ ?>
							disabled class="btn btn-enquiry btn-enquiry-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"
						<?php }else{ ?>
							class="btn btn-cart btn-cart-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"
						<?php } ?>
						>
						<i class="fa fa-shopping-bag"></i>
					</button>
				<?php } else { ?>
					<button type="button"
						<?php if($enquiry){ ?>
							disabled onclick="enquiry.add('<?= $product_id; ?>', '<?= $minimum; ?>');"
						<?php }else{ ?>
							onclick="cart.add('<?= $product_id; ?>', '<?= $minimum; ?>');"
						<?php } ?>
						class="btn btn-img">
						<img src="image/catalog/slicing/header/bag.png" alt="image">
					</button>
				<?php } ?>
				<button type="button" onclick="compare.add('<?= $product_id; ?>');" class="btn hide">
					<i class="fa fa-exchange"></i>
				</button>
			</div>
		</div>
<div style="margin: auto 0 0">
		<div class="categ">
			<h5>
				<?php echo $category; ?>
			</h5>
		</div>

		<div class="product-name">
			<a href="<?= $href; ?>"><?= $name; ?></a>
		</div>

		<div class="product-details product-price-<?=$product_id?>">
			<?php if ($price && !$enquiry) { ?>
				<div class="price">
					<?php if (!$special) { ?>
						<span class="price-new"><?= $price; ?></span>
					<?php } else { ?>
						<span class="price-new"><?= $special; ?></span>
						<span class="price-old"><?= $price; ?></span>
					<?php } ?>
					<?php if ($tax) { ?>
						<span class="price-tax"><?= $text_tax; ?> <?= $tax; ?></span>
					<?php } ?>
				</div>
			<?php } ?>
		</div>

		<?php if ($color_options): ?>
			<div class="color-options">
				<?php foreach ($color_options as $color): ?>
					<span class="color-dot" data-title_link=".title-link<?= $product_id; ?>" data-btn_target = ".prd-link<?= $product_id; ?>" data-option_value = "<?= $color['product_option_value_id']; ?>" data-href = "<?= $href; ?>&color_id=<?= $color['product_option_value_id']; ?>" data-target= ".prod-image<?= $product_id; ?>" data-target2= ".prod-hover<?= $product_id; ?>" data-img ="<?= $color['image']?>" data-img2 ="<?= $color['image2']?>" style="background-color:<?= $color['color']; ?>"></span>
				<?php endforeach ?>
			</div>
		<?php endif ?>
</div>
		<?php if($rating) { ?>
			<div class="rating">
				<?php for ($i = 1; $i <= 5; $i++) { ?>
				<?php if ($rating < $i) { ?>
				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
				<?php } else { ?>
				<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
				<?php } ?>
				<?php } ?>
			</div>
		<?php } ?>
	</div>
</div>

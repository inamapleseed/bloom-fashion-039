<div class="fcats">
	<?php foreach ($categories as $category) { ?>
		<div class="fcat" data-aos="fade-up">
			<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>">
			<a  href="<?php echo $category['href']; ?>" class="overlay a"></a>
			<div class="overlay">
				<h3><?php echo $category['name']; ?></h3>
				<a href="<?php echo $category['href']; ?>" class="btn btn-fancy">Shop Now</a>
			</div>
		</div>
	<?php } ?>
</div>
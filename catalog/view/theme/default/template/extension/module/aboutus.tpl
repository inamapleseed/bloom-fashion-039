<div class="about-container">
	<?php foreach ($repeater as $key => $rep): ?>
		<div class="<?= $key % 2 ? 'even' : ''?> inner">
			<div class="image-container" data-aos="fade-in" data-aos-ease="ease-in-sine" data-aos-delay="200">
				<img src="image/<?php echo $rep['image'] ?>" alt="<?php echo $rep['title'] ?>">
			</div>
			<div class="text-container" data-aos="fade-in" data-aos-ease="ease-in-sine" data-aos-delay="200">
				<h2><?php echo $rep['title'] ?></h2>

				<div class="p">
					<?php echo html_entity_decode($rep['text']); ?>
				</div>
			</div>
		</div>
	<?php endforeach ?>
</div>

<script type="text/javascript">
	$('.aboutus').removeClass('max-offset', 'section-space');
</script>
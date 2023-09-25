<div class="relative slideshow0"  style="opacity: 1; width: 100%; position: fixed;">
  <?php foreach ($banners as $banner) { ?>
    <div class="relative h100">
      <img src="<?= $banner['image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive hidden-xs" />
      <img src="<?= $banner['mobile_image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive visible-xs" />
      <?php if($banner['description']){ ?>
        <div class="slider-slideshow-description w100 absolute position-center-center background-type-<?= $banner['theme']; ?>">
          <div class="container">
            <div class="slider-slideshow-description-texts">
                <h3><?= $banner['title']; ?></h3>
              <?= $banner['description']; ?>

              <?php if ( $banner['link'] && $banner['link_text'] ) { ?>
              <div class="slider-slideshow-description-link">
                <a href="<?= $banner['link']; ?>" class="btn btn-fancy">
                  <?= $banner['link_text']; ?>
                </a>
              </div>
              <!--class:slider-slideshow-description-link-->
              <?php } ?>
            </div>
            <!--class:slider-slideshow-description-texts-->
          </div>
          <!--class:container-->
        </div>
        <!--class:slider-slideshow-description-->
      <?php } ?>
      
      <?php if($banner['link']){ ?>
        <a href="<?= $banner['link']; ?>" class="block absolute position-left-top w100 h100"></a>
      <?php } ?>
      
    </div>
  <?php } ?>
</div>
<div class="relative slideshow0-2"  style="opacity: 0; width: 100%;">
  <?php foreach ($banners as $banner) { ?>
    <div class="relative h100">
      <img src="<?= $banner['image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive hidden-xs" />
      <img src="<?= $banner['mobile_image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive visible-xs" />
      <?php if($banner['description']){ ?>
        <div class="slider-slideshow-description w100 absolute position-center-center background-type-<?= $banner['theme']; ?>">
          <div class="container">
            <div class="slider-slideshow-description-texts">
              <h3><?= $banner['title']; ?></h3>
              <?= $banner['description']; ?>

              <?php if ( $banner['link'] && $banner['link_text'] ) { ?>
              <div class="slider-slideshow-description-link">
                <a href="<?= $banner['link']; ?>" class="btn btn-fancy">
                  <?= $banner['link_text']; ?>
                </a>
              </div>
              <!--class:slider-slideshow-description-link-->
              <?php } ?>
            </div>
            <!--class:slider-slideshow-description-texts-->
          </div>
          <!--class:container-->
        </div>
        <!--class:slider-slideshow-description-->
      <?php } ?>
      
      <?php if($banner['link']){ ?>
        <a href="<?= $banner['link']; ?>" class="block absolute position-left-top w100 h100"></a>
      <?php } ?>
      
    </div>
  <?php } ?>
</div>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<?php //include('slideshow_script_slick.tpl'); ?>
<script type="text/javascript">
  function initSlick32() {
    $('.slideshow0').slick({
      dots: true,
      infinite: true,
      speed: 1500,
      autoplaySpeed: 4000,
      arrows: false,
      pauseOnHover: false,
      autoplay: true,
      slidesToShow: 1,
      fade: true,
      cssEase: 'linear',
      responsive: [
      {
        breakpoint: 1023,
        settings: {
          dots: false,
        }
      },
      ]
    });
  }
  initSlick32();
</script>

<script type="text/javascript">
  function initSlick33() {
    $('.slideshow0-2').slick({
      dots: true,
      infinite: true,
      speed: 1500,
      autoplaySpeed: 4000,
      arrows: false,
      pauseOnHover: false,
      autoplay: true,
      slidesToShow: 1,
      fade: true,
      asNavFor: '.slideshow0',
      responsive: [
      {
        breakpoint: 1023,
        settings: {
          dots: false,
        }
      },
      ]

    });
  }
  initSlick33();
</script>

<?//php include('slideshow_script_owl.tpl'); ?>
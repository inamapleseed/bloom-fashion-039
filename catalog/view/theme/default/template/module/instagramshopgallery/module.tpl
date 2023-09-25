<div class="isl-instagramphotos islip-module th-isl-<?php echo $theme; ?>" style="display:none;">
  <?php if (!empty($setting['module']['title'][$lang_id])) { ?>
    <?php if ($theme == 'journal2') { ?>
      <h2 class="box-heading"><?php echo $setting['module']['title'][$lang_id]; ?></h2>
    <?php } else { ?>
      <h2><?php echo $setting['module']['title'][$lang_id]; ?></h2>
    <?php } ?>
  <?php } ?>

  <div class="islip-gutter-remove clearfix js-islip-container"></div>

<?php if (!empty($custom_css)) { ?>
<style>
  <?php echo $custom_css; ?>
</style>
<?php } ?>
<script>
$(document).ready(function()
{
  // Get photos
  $('.islip-module .js-islip-container').load('index.php?route=<?php echo $module['path']; ?>/fetch&_='+ new Date().getTime(), {"type":"module"}, function() {
    photoGallery();

    // Show modules once all images loaded
    $('.islip-module .js-islip-container').waitForImages(function() {
      $('.islip-module').show();
    });
  });

  // On addCart
  $('body').on('click', '[data-isg-add-cart]', function() {
    var product_id = $(this).data('isg-add-cart');

    if (product_id) {
      <?php if ($theme == 'journal2') { ?>
        addToCart(product_id);
      <?php } else { ?>
        cart.add(product_id);
      <?php } ?>

      setTimeout(function() {
        $.magnificPopup.close();
      }, 1000);
    }
  });
});

function photoGallery() {
  $('.js-islip-container').magnificPopup({
    delegate: '.isl-photo-gallery',
    type: 'ajax',
    gallery: {
      enabled: true,
      tCounter: '<span class="mfp-counter">%curr% of %total%</span>' // markup of counter
    },
    showCloseBtn: true,
    callbacks: {
      open: function() {
        $('html').addClass('mfpip-open');
      },
      close: function() {
        $('html').removeClass('mfpip-open');
      }
    }
  });
}

/*! waitForImages jQuery Plugin 2018-02-13 */
!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?module.exports=a(require("jquery")):a(jQuery)}(function(a){var b="waitForImages",c=function(a){return a.srcset&&a.sizes}(new Image);a.waitForImages={hasImageProperties:["backgroundImage","listStyleImage","borderImage","borderCornerImage","cursor"],hasImageAttributes:["srcset"]},a.expr.pseudos["has-src"]=function(b){return a(b).is('img[src][src!=""]')},a.expr.pseudos.uncached=function(b){return!!a(b).is(":has-src")&&!b.complete},a.fn.waitForImages=function(){var d,e,f,g=0,h=0,i=a.Deferred(),j=this,k=[],l=a.waitForImages.hasImageProperties||[],m=a.waitForImages.hasImageAttributes||[],n=/url\(\s*(['"]?)(.*?)\1\s*\)/g;if(a.isPlainObject(arguments[0])?(f=arguments[0].waitForAll,e=arguments[0].each,d=arguments[0].finished):1===arguments.length&&"boolean"===a.type(arguments[0])?f=arguments[0]:(d=arguments[0],e=arguments[1],f=arguments[2]),d=d||a.noop,e=e||a.noop,f=!!f,!a.isFunction(d)||!a.isFunction(e))throw new TypeError("An invalid callback was supplied.");return this.each(function(){var b=a(this);f?b.find("*").addBack().each(function(){var b=a(this);b.is("img:has-src")&&!b.is("[srcset]")&&k.push({src:b.attr("src"),element:b[0]}),a.each(l,function(a,c){var d,e=b.css(c);if(!e)return!0;for(;d=n.exec(e);)k.push({src:d[2],element:b[0]})}),a.each(m,function(a,c){var d=b.attr(c);return!d||void k.push({src:b.attr("src"),srcset:b.attr("srcset"),element:b[0]})})}):b.find("img:has-src").each(function(){k.push({src:this.src,element:this})})}),g=k.length,h=0,0===g&&(d.call(j),i.resolveWith(j)),a.each(k,function(f,k){var l=new Image,m="load."+b+" error."+b;a(l).one(m,function b(c){var f=[h,g,"load"==c.type];if(h++,e.apply(k.element,f),i.notifyWith(k.element,f),a(this).off(m,b),h==g)return d.call(j[0]),i.resolveWith(j[0]),!1}),c&&k.srcset&&(l.srcset=k.srcset,l.sizes=k.sizes),l.src=k.src}),i.promise()}});
</script>
</div>

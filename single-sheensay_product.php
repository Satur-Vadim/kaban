<?php get_header(); ?>
<div class="prod-content">
	<div class="prod-content__breadcrumbs">
		<?php if( function_exists('breadcrumbs') ) breadcrumbs('/'); ?>
	</div>
		<div class="prod-content__body"> <!-- Product galery and informations -->
			<div class="prod-content__galery"><!-- Product galery -->
				<div class="prod-gal__imgs">
					<?php while ( have_rows('gal_imgs_prod') ) : the_row(); ?>
						<div class="prod-gal__slide">
							<img class="slider-img" src="<?php the_sub_field('gal_img') ?>" alt="">
						</div>
					<?php endwhile; ?>
				</div>
				<div class="prod-gal__thumbs">
					<?php if( have_rows('gal_imgs_prod') ):?>
					<?php while ( have_rows('gal_imgs_prod') ) : the_row(); ?>
					<div class="prod-gal__thumb-item">
						<img class="slider-img" src="<?php the_sub_field('gal_img') ?>" alt="">
					</div>
					<?php endwhile; endif; ?>
				</div>
			</div><!-- end Product galery -->
			<div class="prod-content__infos"><!-- Product informations -->
			<?php 	$cat = wp_get_post_terms(get_the_id(),'sheensay_product_type');
 					$child_cat = $cat[1]; 
 					wp_reset_query(); ?>
 				<div class="prod-infos__cat-name"><?php echo $child_cat->name; ?></div>
 				<div class="prod-infos__title"><?php the_title(); ?></div>
 				<div class="prod-infos__group-info">
 					<div class="prod-infos-group-item"><span>Intent & Level</span><?php the_field('intent_level'); ?></div>
 					<div class="prod-infos-group-item"><span>Mind & Body</span><?php the_field('mind_body'); ?></div> 			
 				</div>
 				<div class="prod-infos__desc"><?php the_content(); ?></div>		
 				<div class="prod-infos__thc-cbd">
 					<div class="thc-cbd__item"><?php the_field('thc'); ?></div>
 					<div class="thc-cbd__item"><?php the_field('cbd'); ?></div>
 				</div>			
				<div class="prod-infos__about"><span>About</span><?php the_field('about'); ?></div>
				<div class="prod-infos__outset-duration">
					<div class="outset-duration__item"><span>Outset</span><?php the_field('outset'); ?></div>
					<div class="outset-duration__item"><span>Duration</span><?php the_field('duration');; ?></div>
				</div>
				<div class="prod-infos__short-text">
					<?php the_field('before_button_text'); ?>
				</div>			
			</div><!-- end Product informations -->
		</div><!-- end prod-content__body -->
	<div class="similar_products">
		<div class="similar_products__title prod-title">Similar products</div>
		<div class="similar_products-container prod-list">
		<?php
		$args = array(
            'post_type' => 'sheensay_product',
            'posts_per_page' => 5,
            'tax_query' => array(
             array('taxonomy' => 'sheensay_product_type','field' => 'slug','terms' =>$child_cat->slug)
         	));
        query_posts($args);
        while ( have_posts() ) : the_post();?>
 			<article class="prod-list__prod-article"><!-- Item similar -->
				<div class="prod-list__prod-img">
				<?php kaban_post_thumbnail(); ?>
				</div>
				<div class="prod-list__content">
					<div class="prod-list__prod-title"><?php the_title()?></div>	
					<div class="post_prod-price"><span class="span_price__prod"><?php the_field('price_usd') ?></span></div>
				</div>
				<footer class="prod-list__edit">
					<?php kaban_entry_footer(); ?>
				</footer>
			</article> <!-- end Item similar -->
		<?php endwhile; wp_reset_query(); ?>
		</div><!-- similar_products-container -->
	</div><!-- similar_products -->
</div><!-- prod-content -->
<?php get_footer(); 
if (get_post_type( $post->ID ) == 'sheensay_product' )
    update_post_meta( $post->ID, '_last_viewed', current_time('mysql') );
?>
<link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/slick/slick.css">
<script type="text/javascript" src="<?php echo get_template_directory_uri()?>/slick/slick.min.js"></script>
<script>
( function( $ ) {
$(document).ready(function(){
 $('.prod-gal__imgs').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  asNavFor: '.prod-gal__thumbs'
});
$('.prod-gal__thumbs').slick({
  slidesToShow: 4,
  slidesToScroll: 1,
  asNavFor: '.prod-gal__imgs',
  focusOnSelect: true,
  arrows: false,
});
});
} )( jQuery );
</script>
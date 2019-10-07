<?php
/**
* Template Name: Our Facility Page
*/ 
get_header(); ?>
<section class="slider">
	<?php if( have_rows('sliders') ):
		  while ( have_rows('sliders') ) : the_row(); ?>
	<div class="slider-content">
		<div class="slider-content__left">
			<div class="slider-content__title"><?php the_sub_field('slide_name') ?></div>
			<?php if(the_sub_field('button_link')): ?>
			<div class="slider-content__button">
				<a class="slider-content__link" href="<?php the_sub_field('button_link') ?>">
					<span class="btn"><?php the_sub_field('button_text') ?></span>
				</a>
			</div>
			<?php endif ?>
		</div>
		<div class="slider-content__right">
			<?php if (get_sub_field('mime') == true) { ?>
				<video class="slide-video" loop="loop" autoplay muted playsinline webkit-playinginline>
				<source src="<?php the_sub_field('image') ?>" type="video/webm">
				</video>
			<?php }else{ ?>
				<img class="slider-img" src="<?php the_sub_field('image') ?>" alt="">
			<?php } ?>
		</div>
	</div>
		<?php endwhile; ?>
	<?php endif; ?>
</section>
<section class="products__main-page">
<?php $prod = new WP_Query(array('post_type' => 'sheensay_product',  'posts_per_page' => 3, 'orderby' => 'date', 'order' => 'ASC'));
 		while ( $prod->have_posts() ) : $prod->the_post(); ?>
 			<div class="product__main-page">
 				<?php 
 				$cat = wp_get_post_terms(get_the_id(),'sheensay_product_type');
 				$child_cat = $cat[1];
 				?>
				<div class="product__image"><img class="prod__main_img" src="<?php the_field('big_img_prod'); ?>" alt=""></div>
				<div class="product__content">
					<div class="product__child-cat"><?php echo $child_cat->name; ?></div>
					<div class="product__name"><?php the_title(); ?></div>
					<div class="product__desc"><?php the_content(); ?></div>
					<?php if (get_field('thc') || get_field('cbd')) { ?>
					<div class="product__group-blocks">
						<div class="product__group-blocks__block"><?php the_field('thc') ?></div>
						<div class="product__group-blocks__block"><?php the_field('cbd') ?></div>
					</div>
					<?php } ?>
					<div class="product__main-page__about"><?php the_field('about') ?></div>
					<div class="product__main-page__infos"><?php the_field('before_button_text') ?></div>
					<div class="product__main-page__button"><a class="product__main-page__btn" href="<?php echo get_permalink(); ?>"><span class="btn">Learn more</span></a></div>
				</div>
			</div>
		<?php endwhile; ?>
</section>
<section class="prod-cat">
	<?php
	$args = array(
	'hierarchical' => true,
	'hide_empty' => false,
	'parent' => 0
);
	$categories = get_terms('sheensay_product_type', $args);
	foreach ($categories as $cat){ ?>
	<div class="prod-cat__item">
		<div class="prod-cat__content">
			<div class="prod-cat__short-text"><?php echo $cat->description; ?></div>
			<div class="prod-cat__name"><?php echo $cat->name; ?></div>
			<div class="prod-cat__button"><a class="prod-cat__btn" href="<?php echo get_term_link($cat,'sheensay_product_type') ?>"><span class="btn"><?php echo $cat->name; ?></span></a></div>
		</div>
		<div class="prod-cat__image">
			<img class="prod-cat__img" src="<?php echo get_field('image_cat', 'term_' . $cat->term_id); ?>" alt="">
		</div>		
	</div>
	<?php } ?>
</section>
<?php get_footer(); ?>
<link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/slick/slick.css">
<script type="text/javascript" src="<?php echo get_template_directory_uri()?>/slick/slick.min.js"></script>
<script>
$(document).ready(function(){
  $('.slider').slick({
    arrows: false,
    dots: true
  });
});
</script>
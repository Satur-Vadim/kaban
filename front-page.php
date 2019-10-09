<?php get_header() ?>
<section class="slider">
	<?php if( have_rows('sliders') ): while ( have_rows('sliders') ) : the_row(); ?>
	<div class="slider-content">
		<div class="slider-content__left">
			<div class="slider-content__title"><?php the_sub_field('slide_name') ?></div>
			<div class="slider-content__button">
				<a class="slider-content__link" href="<?php the_sub_field('button_link') ?>">
					<span class="btn"><?php the_sub_field('button_text') ?></span>
				</a>
			</div>
		</div>
		<div class="slider-content__right">
			<?php if (get_sub_field('mime') == true) { ?> <!-- if this file video -->
				<video class="slide-video" loop="loop" autoplay muted playsinline webkit-playinginline>
				<source src="<?php the_sub_field('image') ?>" type="video/webm">
				</video>
			<?php } else { ?> <img class="slider-img" src="<?php the_sub_field('image') ?>" alt=""> <?php } ?>
		</div>
	</div>
	<?php endwhile; endif; ?>
</section>
<section class="products__main-page">
<?php $prod = new WP_Query(array('post_type' => 'sheensay_product',  'posts_per_page' => 3, 'orderby' => 'date', 'order' => 'ASC'));
 		while ( $prod->have_posts() ) : $prod->the_post(); ?>
 			<div class="product__main-page">
 				<?php $cat = wp_get_post_terms(get_the_id(),'sheensay_product_type'); $child_cat = $cat[1]; // Find child cat product ?>
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
	$args = 
	$categories = get_terms('sheensay_product_type', array('hierarchical' => true,'hide_empty' => false,'parent' => 0));
	foreach ($categories as $cat){ ?>
	<div class="prod-cat__item">
		<div class="prod-cat__content">
			<div class="prod-cat__short-text"><?php echo $cat->description; ?></div>
			<div class="prod-cat__name"><?php echo $cat->name; ?></div>
			<div class="prod-cat__button">
				<a class="prod-cat__btn" href="<?php echo get_term_link($cat,'sheensay_product_type') ?>">
					<span class="btn"><?php echo $cat->name; ?></span>
				</a>
			</div>
		</div>
		<div class="prod-cat__image">
			<img class="prod-cat__img" src="<?php echo get_field('image_cat', 'term_' . $cat->term_id); ?>" alt="">
		</div>		
	</div>
	<?php } ?>
</section>
<section class="blog">
	<div class="container">
		<div class="blog__title">
			<h2 class="blog__title-h2">Blog</h2>
		</div>
		<?php $posts = get_posts(array('orderby' => 'date', 'order' => 'ASC')); $grid_item = 1;?>
		<div class="blog__blocks">
			<?php foreach( $posts as $post ) : setup_postdata( $post ); ?>
			<div class="blog__block blog__block<?php echo $grid_item ?>">
				<div class="blog__category-name"><?php $cat = get_the_category( $post->ID ); echo $cat[0]->name ?></div>
				<div class="blog__block-content">
					<div class="blog__blog-name"><?php the_title() ?></div>
					<div class="blog__desc"><?php the_excerpt(); ?></div>
					<?php if(get_field('show_more_but', $post->ID) == true){ ?>
					<div class="blog__button"><a href="<?php echo get_permalink(); ?>"><span class="btn">Read more</span></a></div>
					<?php } ?>
				</div>
			</div>
			<?php $grid_item++; endforeach; wp_reset_postdata(); ?>
		</div>
	</div>
</section>
<section class="feed-back">
	<div class="container">
		<div class="feed-back__block">
			<div class="feed-back__block-content">
				<div class="feed-back__title">Subscribe for our News</div>
				<div class="feed-back__desc">Sign up for our weekly emails</div>
				<div class="feed-back__button"><a class="feed-back__button-link" href="#"><span class="btn">Subscribe</span></a></div>
			</div>
			<div class="feed-back__block-img">
				<img src="<?php echo get_template_directory_uri()?>/img/img-placeholder.png" alt="">
			</div>
		</div>
	</div>
</section>
<?php get_footer() ?>
<link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/slick/slick.css">
<script type="text/javascript" src="<?php echo get_template_directory_uri()?>/slick/slick.min.js"></script>
<script>
( function( $ ) {
$(document).ready(function(){
  $('.slider').slick({
    arrows: false,
    dots: true
  });
});
} )( jQuery );
</script>
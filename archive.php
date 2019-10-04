<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kaban
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">

		<?php if ( have_posts() ) : ?>
		<div class="archive-container">
			<?php if (get_queried_object()->name != 'sheensay_product'): 
				  echo '<h1 class="archive__title">'.get_queried_object()->name.'</h1>';
				  else:
				  echo '<h1 class="archive__title">All products</h1>';
				  endif;
				  $categories = get_terms('sheensay_product_type', array('hierarchical' => true,'hide_empty' => false,'parent' => 0));
				?>
			<div class="archive-group">
				<div class="archive-categorys">
					<?php foreach ($categories as $cat){ ?>
					<div class="archive-categorys__item <?php if(get_queried_object()->name === $cat->name){echo 'active';} ?>">
						<a class="archive-categorys__item__link" href="<?php echo get_term_link($cat,'sheensay_product_type') ?>">
							<span class="btn"><?php echo $cat->name; ?></span>
						</a>
					</div>
					<?php } ?>
				</div>
				<div class="archive-sort">
					
				</div>
			</div>
			<?php
			/* Start the Loop */
			while ( have_posts() ) :
				the_post();

				/*
				 * Include the Post-Type-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Type name) and that will be used instead.
				 */
				get_template_part( 'template-parts/content', get_post_type() );

			endwhile;

			the_posts_navigation();

		else :

			get_template_part( 'template-parts/content', 'none' );

		endif;
		?>
		</div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_sidebar();
get_footer();

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
			<?php echo '<h1 class="archive__title">'.get_queried_object()->name.'</h1>';
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
				<div class="archive-sort"><!-- sort select -->

			        <select class="archive-sort__dropdown" name="sort-posts" id="sortbox" 
			        onchange="document.location.search=this.options[this.selectedIndex].value;">

			        <option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'date' && isset($_GET["order"]) && trim($_GET["order"]) == 'DESC' ){ echo 'selected'; } ?> value="?orderby=date&order=DESC">Newest
			        </option>

			        <option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'date' && isset($_GET["order"]) && trim($_GET["order"]) == 'ASC' )
			        	{ echo 'selected'; } ?>  value="?orderby=date&order=ASC">Oldest
			        </option>

			        <option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'title' && isset($_GET["order"]) && trim($_GET["order"]) == 'ASC' ){ echo 'selected'; } ?> value="?orderby=title&order=ASC" value="?orderby=title&order=ASC">A-Z Asc
			        </option>

			        <option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'title' && isset($_GET["order"]) && trim($_GET["order"]) == 'DESC' ){ echo 'selected'; } ?>  value="?orderby=title&order=DESC">A-Z Desc
			        </option>

			        </select><!-- end sort select -->

				</div>
			</div>
			<div class="prod-list">
			<?php while ( have_posts() ) :
				the_post(); ?>
				<article class="prod-list__prod-article">
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
			</article>
            <?php  endwhile; echo "</div>";// rows
			$pag = array('prev_text'=> 'Previous','next_text'=> 'Next',); //paginate setings
        	the_posts_pagination($pag);
			else : // if have_posts()
			get_template_part( 'template-parts/content', 'none' );
			endif;
			$args = array(
				'post_type' => 'sheensay_product',
				'posts_per_page' => 4,
				'meta_key' => '_last_viewed',
				'orderby' => 'meta_value',
				'order' => 'DESC');
			query_posts( $args ); 
			if( have_posts() ) : ?>
			<div class="recently-viewed">
				<div class="recently-viewed__title">Recently viewed</div>
				<div class="prod-list">
					<?php while( have_posts() ) : the_post(); ?>
					   <article class="prod-list__prod-article">
							<div class="prod-list__prod-img">
							<?php kaban_post_thumbnail(); ?>
							</div>
							<div class="prod-list__content">
								<div class="prod-list__prod-title"><?php the_title()?></div>	
								<div class="post_prod-price"><span class="span_price__prod"><?php the_field('price_usd') ?></span></div>
							</div>
							<footer class="prod-list__edit"><?php kaban_entry_footer(); ?></footer>
						</article>
					<?php endwhile; ?>
				</div>
			</div>
			<?php endif; wp_reset_query(); ?>	
			</div>
		</main>
	</div>

<?php
get_sidebar();
get_footer();

<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kaban
 */
get_header();
?>
<div id="primary" class="content-area">
	<main id="main" class="site-main">
		<?php
		if ( have_posts() ) : ?>
		<section class="blog blog-page">
			<div class="container">
				<div class="btn-group">
					<div class="search-form">
						<?php get_search_form(); ?>	
					</div>
					<div class="archive-sort"><!-- sort select -->
						<select class="archive-sort__dropdown" name="sort-posts" id="sortbox" onchange="document.location.search=this.options[this.selectedIndex].value;">
							<option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'date' && isset($_GET["order"]) && trim($_GET["order"]) == 'DESC' ){ echo 'selected'; } ?> value="?orderby=date&order=DESC">Newest</option>
							<option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'date' && isset($_GET["order"]) && trim($_GET["order"]) == 'ASC' ){ echo 'selected'; } ?>  value="?orderby=date&order=ASC">Oldest</option>
							<option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'title' && isset($_GET["order"]) && trim($_GET["order"]) == 'ASC' ){ echo 'selected'; } ?> value="?orderby=title&order=ASC" value="?orderby=title&order=ASC">A-Z Asc</option>
							<option <?php if( isset($_GET["orderby"]) && trim($_GET["orderby"]) == 'title' && isset($_GET["order"]) && trim($_GET["order"]) == 'DESC' ){ echo 'selected'; } ?>  value="?orderby=title&order=DESC">A-Z Desc</option>
						</select><!-- end sort select -->
					</div>
				</div>
				<div class="blog__blocks">
				<?php
				$grid_item = 1;
				while ( have_posts() ) : the_post();?>
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
				<?php $grid_item++; endwhile; ?>
				</div>
			</div>
		</section>
		<?php else : get_template_part( 'template-parts/content', 'none' ); endif;?>
	</main><!-- #main -->
</div><!-- #primary -->
<?php
get_footer();

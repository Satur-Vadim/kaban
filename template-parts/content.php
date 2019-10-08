<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kaban
 */

?>
<?php 
if (get_post_type( $post->ID ) == 'product' )
    update_post_meta( $post->ID, '_last_viewed', current_time('mysql') );
?>
<article id="post-<?php the_ID(); ?>"<?php post_class(); ?>>
	<div class="entry-content">
		<div class="article-header">
			<div class="article-header__back">
				Back to <a class="blog-link" href="/blog">Blog</a>
			</div>
			<?php if(has_tag()){the_tags('<div class="article-header__tags">','','</div>');}?>
			<div class="article-header__title">
					<?php the_title( '<h1 class="entry-title">','</h1>' );?>
			</div>
			<div class="article-header__date">
				<?php the_date('M d, Y'); ?>
			</div>
		</div>
		<?php 
		kaban_post_thumbnail(); 
		the_content();
		?>
	</div><!-- .entry-content -->
</article><!-- #post-<?php the_ID(); ?> -->

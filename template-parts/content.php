<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kaban
 */

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
	</div>
	<div class="article-info__autor">
		<?php 
		$user_ID = get_the_author_ID();
		$author_email = get_the_author_email(); 
		?>
		<div class="author-image"><?php  echo get_avatar($author_email,'52');?></div>
		<div class="author-info">
			<div class="author-info__name"><?php the_author(); ?></div>
			<div class="author-info__role"><?php echo get_author_role();?></div>
		</div>
		<div class="author-social">
			<a class="author-social__twiter" href="<?php the_field('twiter', 'user_'.$user_ID); ?>">
				<img src="<?php echo get_template_directory_uri()?>/img/twitter-brands.svg" alt="">
			</a>
			<a class="author-social__facebook" href="<?php the_field('facebook', 'user_'.$user_ID); ?>">
				<img src="<?php echo get_template_directory_uri()?>/img/facebook-f-brands.svg" alt="">
			</a>
		</div>
	</div>
	<div class="related-articles">
		<?php related_posts() ?>
	</div>	
</article><!-- #post-<?php the_ID(); ?> -->

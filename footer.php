<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package kaban
 */

?>

</div><!-- #content -->

<footer id="colophon" class="site-footer">
	<div class="container">
		<div class="top-footer-block">
			<div class="top-footer-block__left-block">
				<div class="footer-logo"><?php the_custom_logo();?></div>
				<div class="footer-slug">From the Earth, For the Earth.</div>
				<div class="footer-optins">
					<div class="footer-optins__item">english</div>
					<div class="footer-optins__item">usd</div>
				</div>
			</div>
			<div class="top-footer-block__right-block">
				<nav class="footer__nav">
					<?php wp_nav_menu( array(
					'theme_location' => 'menu-3',
					) ); ?>
				</nav>
			</div>
		</div>
		<div class="bottom-footer-block">
			<div class="all-rights__reserved"><?php echo date('Y'); ?> © All rights reserved</div>
			<div class="footer__pay">
				<img class="footer__pay__img" src="<?php echo get_template_directory_uri()?>/img/visa.png" alt="">
				<img class="footer__pay__img" src="<?php echo get_template_directory_uri()?>/img/master-card.png" alt="">
			</div>
		</div>	
	</div>
</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>
<script>
	( function( $ ) {
	$(document).ready(function(){
		var padding = $(".site-header").height();
		$('.site').css('padding-top',padding);
	});
} )( jQuery );
</script>

</body>
</html>

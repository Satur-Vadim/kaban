<?php
/**
* Template Name: Contacts Page
*/ 
get_header(); ?>
<div class="contact-page">
	<div class="contact-page__title">Get in touch</div>
	<div class="contact-page__mail"><span class="contact-page__mail-silver-text">Or reach us at</span> kaban@mail.com</div>
	<div class="contact-page__form">
		<?php echo do_shortcode('[contact-form-7 id="158" title="Контактная форма 1"]'); ?>
	</div>
</div>
<?php get_footer(); ?>
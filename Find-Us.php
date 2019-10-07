<?php
/**
* Template Name: Find Us Page
*/ 
get_header(); ?>
<div class="find-us__page">
	<div id="map" class="find-us__map"><div class="map-filter"></div><?php the_field('map') ?></div>
	<div class="find-us__adress">
		<div class="find-us__title"><?php the_title() ?></div>
		<div class="find-us__text"><?php the_field('adress')?></div>
	</div>
</div>
<?php get_footer(); ?>
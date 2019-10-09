<?php
/*
YARPP Template: List
Description: This template returns the related posts as a comma-separated list.
Author: mitcho (Michael Yoshitaka Erlewine)
*/
?>
<div class="related-articles__title">
	Related articles	
</div>
<div class="blog__blocks">
<?php if (have_posts()):
	$postsArray = array();
	$grid_item = 1;
	while (have_posts()) : the_post(); ?>
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
	<?php $grid_item++; endwhile;

echo implode(', '."\n",$postsArray); // print out a list of the related items, separated by commas

else:?>
</div>
<p>No related posts.</p>
<?php endif; ?>

<?php get_header(); ?>


<?php get_footer(); 
if (get_post_type( $post->ID ) == 'sheensay_product' )
    update_post_meta( $post->ID, '_last_viewed', current_time('mysql') );
?>
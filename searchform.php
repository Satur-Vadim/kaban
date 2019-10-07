<form class="" role="search" method="get" id="searchform" action="<?php echo home_url( '/' ) ?>" >
	<label class="screen-reader-text" for="s">Search: </label>
	<div class="">
		<input class="search-form__input" type="text" placeholder="Search for article" value="<?php echo get_search_query() ?>" name="s" id="s"/>
	</div>
	<input class="search-form__sub" type="submit" id="searchsubmit" value="Search" />
</form>
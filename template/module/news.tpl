<?php
//-----------------------------------------------------
// News Module for Opencart v1.5.5   							
// Modified by villagedefrance                          			
// contact@villagedefrance.net                         			
//-----------------------------------------------------
?>

<?php if ($news) { ?>
<?php if($box) { ?>
	<div class="unit ss-news">
			<div class="unit horizontal-center ss-box-news-title" style="margin-bottom:10px;">
				<?php if($customtitle) { ?>
					<?php echo $customtitle; ?>
				<?php } ?>
			</div>
		
			<?php foreach ($news as $news_story) { ?>
			<div class="unit horizontal-center ss-box-news-content" >
					<?php if ($show_headline) { ?>
					<b><a href="<?php echo $news_story['href']; ?>" style="font-weight:900;"><?php echo $news_story['title']; ?></a></b><br />
					<?php } ?>
					<p><?php echo $news_story['description']; ?> .. </p>
			</div>
			<?php } ?>
		
	</div>
<?php } else { ?>
	<div style="margin-bottom:10px;">
		<?php foreach ($news as $news_story) { ?>
			<div class="box-news">
				<?php if ($show_headline) { ?>
					<h4><?php echo $news_story['title']; ?></h4>
				<?php } ?>
				<?php echo $news_story['description']; ?> .. <br />
				<a href="<?php echo $news_story['href']; ?>"> <?php echo $text_more; ?></a>
				</p>
				<a href="<?php echo $news_story['href']; ?>"><img src="catalog/view/theme/default/image/message-news.png" alt="" /></a> 
				<span><b><?php echo $text_posted; ?></b> <?php echo $news_story['posted']; ?></span>
			</div>
		<?php } ?>
		<?php if($showbutton) { ?>
			<div style="text-align:right;">
				<a href="<?php echo $newslist; ?>" class="button"><span><?php echo $buttonlist; ?></span></a>
			</div>
		<?php } ?>
	</div>
<?php } ?>
<?php } ?>
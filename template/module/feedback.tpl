<script src="http://malsup.github.io/min/jquery.cycle2.min.js"></script>
<?php
$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "feedback where status=1");
$feedbacks=$query->rows;

?>
<div class="cycle-slideshow" data-cycle-fx="scrollHorz" data-cycle-timeout="4000" data-cycle-slides="> div" style="width:217px; min-height:20px;margin-top:30px;">
<?php foreach($feedbacks as $feedback){ ?>
<div style="width:217px;">
    <p style="padding-left:5px;color:#666666;font-size:12px;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;"><?php echo html_entity_decode($feedback['feedback'], ENT_QUOTES, 'UTF-8'); ?></p>
	<p style="padding-left:5px;color:#666666;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-style:italic;"><?php echo $feedback['name']; ?></p>
</div>
<?php } ?>


</div>

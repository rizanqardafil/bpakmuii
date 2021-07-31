
	<div align="center">
		<?php echo $notes?>
	</div>
	<script>
		$(".act_note").colorbox({ 
				overlayClose: false,
				data:{year:<?php echo $year;?>,mon:<?php echo $mon;?>}
		});
	</script>

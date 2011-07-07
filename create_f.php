<?php
/**************************************************************/
/* MKMLabs™ InteropAbility Framework Builder [prototype]      */
/* Created by Dave Waller © MKMLabs™ 2011                     */
/**************************************************************/

require_once('.config/config.php');
require_once('functions.php');
?>

<?php if(!isset($_POST["title"]) || $_POST["title"]==""){ ?>
<?php htmlHeader(); ?>
<h2><a href="index.php">Home</a> &raquo; Create a new framework</h2>
<form action="create_f.php" method="post">
	
	<label for="title">Title: </label> <input class="text" id="title" name="title" size="25" /><hr/>
	
	<label for="shorttitle">Short title: </label> <input class="text" id="shorttitle" name="shorttitle" size="20" /><hr/>
	
	<label for="desc">Description: </label> <input class="text" id="desc" name="desc" size="45" /><hr/>
	
	<label for="rightsholder">Rights holder: </label> <input class="text" id="rightsholder" name="rightsholder" size="25" /><hr/>

	<label for="creator">Creator: </label> <input class="text" id="creator" name="creator" size="25" /><hr/>
	
	<label for="publisher">Publisher: </label> <input class="text" id="publisher" name="publisher" size="25" value="http://www.mkmlabs.com/"/><hr/>
	
	<label for="source">Source: </label> <input class="text" id="source" name="source" size="25" /><hr/>
	
	<label for="scale">Scale: </label> <select id="scale" name="scale">
		<option value="0" selected>Do not use a scale</option>
		<option value="1">1-5 rating scale (CapabilityMatrix)</option>
		<option value="2">Boolean scale (met or not met)</option>
	</select><hr/>
	
	<input type="submit" value="Create Framework" />
</form>
<?php htmlFooter(); ?>
<?php }else{
	
	/* Connect to DB */
	mysql_connect($config["db"]["host"],$config["db"]["username"],$config["db"]["password"]);
	@mysql_select_db($config["db"]["dbname"]) or die( "Unable to select database");
	
	mysql_query("INSERT INTO frameworks (TITLE, DESCRIP, SHORTTITLE, RIGHTSHOLDER, CREATOR, PUBLISHER, SOURCE, SCALE) VALUES ('".$_POST["title"]."', '".$_POST["desc"]."', '".$_POST["shorttitle"]."', '".$_POST["rightsholder"]."', '".$_POST["creator"]."', '".$_POST["publisher"]."', '".$_POST["source"]."', '".$_POST["scale"]."')");
	?>
	<script>
		window.location = "index.php";
	</script>
	<?php
} ?>
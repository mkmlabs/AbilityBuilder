<?php
/**************************************************************/
/* MKMLabs™ InteropAbility Framework Builder [prototype]      */
/* Created by Dave Waller © MKMLabs™ 2011                     */
/**************************************************************/

require_once('.config/config.php');
require_once('functions.php');
/* Connect to DB */
	mysql_connect($config["db"]["host"],$config["db"]["username"],$config["db"]["password"]);
	@mysql_select_db($config["db"]["dbname"]) or die( "Unable to select database");
	
?>

<?php if(!isset($_POST["name"]) || $_POST["name"]==""){ ?>
<?php htmlHeader(); ?>
<h2><a href="index.php">Home</a> &raquo; Create a new section</h2>
<form action="create_s.php" method="post">
	
	<label for="framework">Framework: </label> <select name="framework" id="framework">
		<?php
		$query = 'SELECT * FROM frameworks';
		$result = mysql_query($query);
		$a=0;while($a<mysql_numrows($result)){
			echo('<option value="'.mysql_result($result,$a,"ID").'">');
			echo(mysql_result($result,$a,"TITLE"));
			echo('</option>');
			$a++;
		}
		?>
	</select><hr/>
	
	<label for="name">Name: </label> <input class="text" id="name" name="name" size="30" /><hr/>
	
	<label for="desc">Description: </label> <input class="text" id="desc" name="desc" size="45" /><hr/>
	
	<input type="submit" value="Create Section" />
</form>
<?php htmlFooter(); ?>
<?php }else{
	
	mysql_query("INSERT INTO sections (FRAMEWORK, NAME, DESCRIP) VALUES ('".$_POST["framework"]."', '".$_POST["name"]."', '".$_POST["desc"]."')");

	?>
	<script>
		window.location = "create_s.php";
	</script>
	<?php
} ?>
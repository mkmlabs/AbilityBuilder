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

<?php if(!isset($_POST["desc"]) || $_POST["desc"]==""){ ?>
<?php htmlHeader(); ?>
<h2><a href="index.php">Home</a> &raquo; Create a new ability</h2>
<form action="create_a.php" method="post">
	
	<label for="framework">Framework: </label> <select name="framework" id="framework">
		<?php
		$query = 'SELECT * FROM frameworks';
		$result = mysql_query($query);
		$a=0;while($a<mysql_numrows($result)){
			echo('<option value="'.mysql_result($result,$a,"ID").'">');
			echo(mysql_result($result,$a,"TITLE").' ('.mysql_result($result,$a,"ID").')');
			echo('</option>');
			$a++;
		}
		?>
	</select><hr/>
	
	<label for="section">Section: </label> <select name="section" id="section">
		<?php
		$query2 = 'SELECT * FROM sections';
		$result2 = mysql_query($query2);
		$a=0;while($a<mysql_numrows($result2)){
			echo('<option value="'.mysql_result($result2,$a,"ID").'">');
			echo(mysql_result($result2,$a,"FRAMEWORK").'. '.mysql_result($result2,$a,"NAME").' ('.mysql_result($result2,$a,"ID").')');
			echo('</option>');
			$a++;
		}
		?>
	</select><hr/>
	
	<label for="subsection">Subsection: </label> <select name="subsection" id="subsection">
		<?php
		$query3 = 'SELECT * FROM subsections';
		$result3 = mysql_query($query3);
		$a=0;while($a<mysql_numrows($result3)){
			echo('<option value="'.mysql_result($result3,$a,"ID").'">');
			echo(mysql_result($result3,$a,"FRAMEWORK").'.'.mysql_result($result3,$a,"PARENT").'. '.mysql_result($result3,$a,"NAME"));
			echo('</option>');
			$a++;
		}
		?>
	</select><hr/>
	
	<label for="desc">Description: </label> <input class="text" id="desc" name="desc" size="45" /><hr/>
	
	<input type="submit" value="Create Ability" />
</form>
<?php htmlFooter(); ?>
<?php }else{
	
	mysql_query("INSERT INTO competencies (FRAMEWORK, SECTION, SUBSECTION, DESCRIP) VALUES ('".$_POST["framework"]."', '".$_POST["section"]."', '".$_POST["subsection"]."', '".$_POST["desc"]."')");
	?>
	<script>
		window.location = "create_a.php";
	</script>
	<?php
} ?>
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
	
if(isset($_GET["f"])){
	header ("Content-Type:text/xml");
	
	$query = 'SELECT * FROM frameworks WHERE ID="'.$_GET["f"].'"';
	$result = mysql_query($query);
	
	$framework = array(
		"meta" => array(
			"id"			=> $_GET["f"],
			"title"			=> mysql_result($result,0,"TITLE"),
			"description"	=> mysql_result($result,0,"DESCRIP"),
			"shorttitle"	=> mysql_result($result,0,"SHORTTITLE"),
			"rightsholder"	=> mysql_result($result,0,"RIGHTSHOLDER"),
			"creator"		=> mysql_result($result,0,"CREATOR"),
			"publisher"		=> mysql_result($result,0,"PUBLISHER"),
			"source"		=> mysql_result($result,0,"SOURCE"),
			"timestamp"		=> mysql_result($result,0,"TIMESTAMP"),
			"scale"			=> mysql_result($result,0,"SCALE")
		),
		"contents" => array()
	);
	
	renderHeader();
	
	renderRoot($framework);
	
	renderFooter();
}else{
	htmlHeader();
	echo('<div id="left"><h2>Select a framework... <span>(shown in InteropAbility XML format)</span></h2>');
	echo('<ul>');
		$query = 'SELECT * FROM frameworks';
		$result = mysql_query($query);
		$a=0; while($a < mysql_numrows($result)){
			echo('<li><a href="?f='.mysql_result($result,$a,"ID").'" target="_blank">');
			echo(mysql_result($result,$a,"TITLE"));
			echo('</a><br/>');
			if(mysql_result($result,$a,"DESCRIP")!=""){
				echo(' '.mysql_result($result,$a,"DESCRIP"));
			}else{
				echo(' No description provided.');
			}
			echo('</li>');
			$a++;
		}
	echo('</ul>'); ?>
	</div>
	<div id="right">
	<h2>Create...</h2>
	<ul>
		<li><a href="create_f.php">...a new framework</a></li>
		<li><a href="create_s.php">...a new section</a></li>
		<li><a href="create_ss.php">...a new subsection</a></li>
		<li><a href="create_a.php">...a new ability</a></li>
	</ul>
	</div>
	<?php
	htmlFooter();
}
	
/* Close DB connection */
mysql_close();



?>
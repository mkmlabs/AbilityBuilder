<?php
/**************************************************************/
/* MKMLabs™ InteropAbility Framework Builder [prototype]      */
/* Created by Dave Waller © MKMLabs™ 2011                     */
/**************************************************************/


    function renderHeader(){
		echo('<?xml version="1.0" encoding="UTF-8"?>');
		echo('<interopAbility xmlns="http://www.interopAbility.org/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:med="http://ns.medbiq.org/competencyobject/v1/" xsi:schemaLocation="http://www.interopAbility.org/interopAbility0.3.xsd">');
	}
	
	function renderRoot($framework){
		$query = 'SELECT * FROM frameworks WHERE ID="'.$framework["meta"]["id"].'"';
		$result = mysql_query($query);
		
		echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?f='.$framework["meta"]["id"].'</dcterms:identifier>');
		echo('<dcterms:title>'.$framework["meta"]["title"].'</dcterms:title>');
		echo('<shortTitle>'.$framework["meta"]["shorttitle"].'</shortTitle>');
		echo('<description>'.$framework["meta"]["description"].'</description>');
		echo('<dcterms:rightsHolder>'.$framework["meta"]["rightsholder"].'</dcterms:rightsHolder>');
		echo('<dcterms:creator>'.$framework["meta"]["creator"].'</dcterms:creator>');
		echo('<dcterms:publisher>'.$framework["meta"]["publisher"].'</dcterms:publisher>');
		echo('<dcterms:source>'.$framework["meta"]["source"].'</dcterms:source>');
		echo('<dcterms:created>'.$framework["meta"]["timestamp"].'</dcterms:created>');
		
		$query = 'SELECT * FROM sections WHERE FRAMEWORK="'.$framework["meta"]["id"].'"';
		$result = mysql_query($query);
		
		$a=0; while($a < mysql_numrows($result)){
			echo('<relationship>');
				echo('<typeOfRelationship>hasSubAbility</typeOfRelationship>');
				echo('<ability>');
					echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?f='.$framework["meta"]["id"].'&amp;s='.mysql_result($result,$a,"ID").'</dcterms:identifier>');
	                echo('<dcterms:title>'.mysql_result($result,$a,"NAME").'</dcterms:title>');
					if(mysql_result($result,$a,"DESCRIP") != "") echo('<description>'.mysql_result($result,$a,"DESCRIP").'</description>');
					
					$sectionID = mysql_result($result,$a,"ID");
					$sectionName = mysql_result($result,$a,"NAME");
					$query2 = 'SELECT * FROM subsections WHERE PARENT="'.$sectionID.'"';
					$result2 = mysql_query($query2);
					
					$b=0; while($b < mysql_numrows($result2)){
						echo('<relationship>');
							echo('<typeOfRelationship>hasSubAbility</typeOfRelationship>');
							echo('<ability>');
								echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?f='.$framework["meta"]["id"].'&amp;s='.$sectionID.'&amp;ss='.mysql_result($result2,$b,"ID").'</dcterms:identifier>');
	                			echo('<dcterms:title>'.mysql_result($result2,$b,"NAME").'</dcterms:title>');
								if(mysql_result($result2,$b,"DESCRIP") != "") echo('<description>'.mysql_result($result2,$b,"DESCRIP").'</description>');
								
								$subsectionID = mysql_result($result2,$b,"ID");
								$subsectionName = mysql_result($result2,$b,"NAME");
								$query3 = 'SELECT * FROM competencies WHERE SUBSECTION="'.$subsectionID.'"';
								$result3 = mysql_query($query3);
								
								$c=0; while($c < mysql_numrows($result3)){
									echo('<relationship>');
										echo('<typeOfRelationship>hasSubAbility</typeOfRelationship>');
										echo('<ability>');
											echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?a='.mysql_result($result3,$c,"ID").'</dcterms:identifier>');
	                						echo('<dcterms:title>'.mysql_result($result3,$c,"DESCRIP").'</dcterms:title>');
											echo('<relationship>');
	                							echo('<typeOfRelationship>isSubAbilityOf</typeOfRelationship>');
	                							echo('<ability>');
	                    							echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?f='.$framework["meta"]["id"].'&amp;s='.$sectionID.'&amp;ss='.$subsectionID.'</dcterms:identifier>');
	                    							echo('<dcterms:title>'.$subsectionName.'</dcterms:title>');
	                							echo('</ability>');
	            							echo('</relationship>');
										echo('</ability>');
									echo('</relationship>');
									$c++;
								}
								
								echo('<relationship>');
	                				echo('<typeOfRelationship>isSubAbilityOf</typeOfRelationship>');
	                				echo('<ability>');
	                    				echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?f='.$framework["meta"]["id"].'&amp;s='.$sectionID.'</dcterms:identifier>');
	                    				echo('<dcterms:title>'.$sectionName.'</dcterms:title>');
	                				echo('</ability>');
	            				echo('</relationship>');
							echo('</ability>');
						echo('</relationship>');
						$b++;
					}
				
					echo('<relationship>');
	                	echo('<typeOfRelationship>isSubAbilityOf</typeOfRelationship>');
	                	echo('<ability>');
	                    	echo('<dcterms:identifier>http://www.mkmlabs.com/abilitybuilder/?f='.$framework["meta"]["id"].'</dcterms:identifier>');
	                    	echo('<dcterms:title>'.$framework["meta"]["title"].'</dcterms:title>');
	                	echo('</ability>');
	            	echo('</relationship>');
					
					if($framework["meta"]["scale"] > 0) renderScale($framework["meta"]["scale"]);
					
				echo('</ability>');
			echo('</relationship>');
			$a++;
		}
	}
	
	function renderScale($scaleId){
		$squery = 'SELECT * FROM scales WHERE ID="'.$scaleId.'"';
		$sresult = mysql_query($squery);
		echo('<scale>');
			echo('<forUser>learner</forUser>');
			echo('<lowerBound>'.mysql_result($sresult,0,"LOWERBOUND").'</lowerBound>');
			echo('<upperBound>'.mysql_result($sresult,0,"UPPERBOUND").'</upperBound>');
			echo('<scaleItem>');
				echo('<key>'.mysql_result($sresult,0,"LOWVAL").'</key>');
				echo('<value>'.mysql_result($sresult,0,"LOWTERM").'</value>');
			echo('</scaleItem>');
			if(mysql_result($sresult,0,"MIDTERM")!=""){
				echo('<scaleItem>');
					echo('<key>'.mysql_result($sresult,0,"MIDVAL").'</key>');
					echo('<value>'.mysql_result($sresult,0,"MIDTERM").'</value>');
				echo('</scaleItem>');
			}
			echo('<scaleItem>');
				echo('<key>'.mysql_result($sresult,0,"HIVAL").'</key>');
				echo('<value>'.mysql_result($sresult,0,"HITERM").'</value>');
			echo('</scaleItem>');
		echo('</scale>');
	}
	
	function renderFooter(){
		echo('</interopAbility>');
	}

	function htmlHeader(){?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>MKMLabs&trade; InteropAbility framework builder [prototype] </title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="en-gb" />
	<meta name="language" content="en-gb" />
	<link type="image/x-icon" href="http://www.mkmlabs.com/media/390/favicon.png" rel="shortcut icon">
	<link media="all" href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2><span>MKMLabs&trade; InteropAbility Framework Builder [prototype]</span></h2>
			<h1><span>MKMLabs&trade;</span></h1>
		</div>
		<div id="contents">
	<?php }
	
	function htmlFooter(){ ?>
		</div>
		<div id="footer">
			<p>Produced as an InteropAbility publisher prototype by Dave Waller &copy; MKMLabs&trade; 2011</p>
		</div>
	</div>
</body>
</html>
	<?php }
	
?>
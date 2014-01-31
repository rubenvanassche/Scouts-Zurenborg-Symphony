<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row">
		<div class="col-md-12">
		    <em>Voorbije berichten vindt u hier.</em> 
		    <a class="pull-right" href="{$root}/rss"><img style="height:16px;" src="{$workspace}/resources/img/rss.png" /></a>
		</div>
		<div class="col-md-12 berichten" style="margin-top:20px;">

			<xsl:apply-templates select="berichten/entry"/>

			<a href="{params/root}" class="pull-right">Terug naar home</a>
		</div>
	</div>
</xsl:template>

<xsl:template match="berichten/entry">
	<div class="bericht" style="background-color:#3498db;">
		<div class="title">
			<xsl:value-of select="titel"/>
		</div>
			<div class="caption">
			<xsl:value-of select="slagzin"/>
		</div>
		<div class="readmore">
			<a href="{$root}/bericht/{@id}">Lees meer <i class="glyphicon glyphicon-chevron-right"></i></a>
		</div>
	</div>
</xsl:template>

<xsl:template name="extra-js">
	<script>
		var colors = Array('#f39c12', '#e74c3c', '#3498db', '#18bc9c');
		var temp = Array('#f39c12', '#e74c3c', '#3498db', '#18bc9c');
		$( ".bericht" ).each(function(index) {
			var colorIndex = Math.floor(Math.random()*temp.length)
			var backgroundcolor = temp[colorIndex];
			temp.splice(colorIndex,1);
			
			$(this).css("background-color", backgroundcolor);
			
			console.log(index%4);
			
			3, 7, 11, 14
			
			if(index != 0){
				if(index%4 == 3){
					temp = colors.slice(0);
				}
			}
		});
	</script>
</xsl:template>

</xsl:stylesheet>
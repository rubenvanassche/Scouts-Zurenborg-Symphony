<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row">
		<div class="col-md-12">
		    <em>Voorbije berichten vindt u hier.</em> 
		    <a class="pull-right" href="{$root}/rss"><img style="height:16px;" src="{$workspace}/resources/img/rss.png" /></a>
		</div>
		<div class="col-md-12" style="margin-top:20px;">

			<xsl:apply-templates select="berichten/entry"/>

			<a href="{params/root}" class="pull-right">Terug naar home</a>
		</div>
	</div>  	
</xsl:template>

<xsl:template match="berichten/entry">
	<xsl:if test="achtergrond/item='Lichtblauw'">
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
	</xsl:if>

	<xsl:if test="achtergrond/item='Geel'">
		<div class="bericht" style="background-color:#f39c12;">
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
	</xsl:if>

	<xsl:if test="achtergrond/item='Rood'">
		<div class="bericht" style="background-color:#e74c3c;">
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
	</xsl:if>

	<xsl:if test="achtergrond/item='Groen'">
		<div class="bericht" style="background-color:#18bc9c;">
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
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
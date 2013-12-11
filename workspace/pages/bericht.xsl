<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
	<div class="row">
		<div class="col-md-12">
			<xsl:copy-of select="bericht/entry/inhoud"/>
			<p class="pull-right"><a onClick="javascript: history.go(-1)">Terug</a></p>
		</div>
	</div>
</xsl:template>

<!--
<xsl:template name="background-image">
        <xsl:value-of select="data/params/workspace"/>/Afbeeldingen/berichten/<xsl:value-of select="data/bericht/entry/foto/filename"/>
</xsl:template>
-->

<xsl:template name="page-title">
        <xsl:value-of select="data/bericht/entry/titel"/>
</xsl:template>


</xsl:stylesheet>
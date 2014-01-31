<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master-leiding.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:template match="/data">
<div class="row">
	<div class="col-md-12">
		<xsl:apply-templates select="groepsverslagen/entry"/>
	</div>
</div>
</xsl:template>

<xsl:template match="groepsverslagen/entry">
	<h3>Groepsverslag  
	<xsl:call-template name="format-date">
		<xsl:with-param name="date" select="datum/date/start"/>
		<xsl:with-param name="format" select="'x M Y'"/>
	</xsl:call-template>
	</h3>
	<p><i class="glyphicon glyphicon-cloud-download"> </i> <a href="{$workspace}/groepsverslagen/{verslag/filename}">Download Bestand</a></p>
</xsl:template>

</xsl:stylesheet>
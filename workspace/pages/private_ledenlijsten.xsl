<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master-leiding.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:template match="/data">
<div class="row">
	<xsl:apply-templates select="ledenlijsten/entry"/>
</div>
</xsl:template>

<xsl:template match="ledenlijsten/entry">
	<div class="col-sm-4">
		<h3><xsl:value-of select="tak"/></h3>
		<p><i class="glyphicon glyphicon-cloud-download"> </i> <a href="{$workspace}/ledenlijsten/{lijst/filename}">Download Lijst</a></p>
	</div>
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row">
		<div class="col-md-12">
	      <em>Voorbije edities van maandbladen vindt u hier.</em> 
	    </div>
	</div>
	<div class="row" style="margin-top:20px;">
		<xsl:for-each select="maandbladen/entry">
			<div class="col-md-2"><a href="{$root}/maandblad/{selector/@handle}"><xsl:value-of select="selector"/></a></div>
    	</xsl:for-each>
	</div>
</xsl:template>

<xsl:template name="page-title">
        Maandbladen
</xsl:template>


</xsl:stylesheet>
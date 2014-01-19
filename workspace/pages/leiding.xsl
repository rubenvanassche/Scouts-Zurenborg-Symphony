<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
    <div class="row">
			<xsl:apply-templates select="leiding/entry"/>
    </div>
</xsl:template>

<xsl:template match="leiding/entry">
    <div class="leidingImg col-md-4">
        <img src="{$root}/image/2/200/200/5/Afbeeldingen/leiding/{foto/filename}" alt="{naam}" class="img-circle"/>
        <p class="title"><xsl:value-of select="naam"/></p>
        <p><xsl:value-of select="straat"/>&#160;<xsl:value-of select="huisnummer"/></p>
        <p><xsl:value-of select="postcode"/>&#160;<xsl:value-of select="stad"/></p>
        <p class="telefoon"><xsl:value-of select="telefoonnummer"/></p>
    </div>
</xsl:template>

<xsl:template name="page-title">
        Iedereen
</xsl:template>


</xsl:stylesheet>
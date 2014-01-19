<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
    <div class="row">
        <div class="col-sm-2 sidebar">
        	<xsl:if test="tak/entry/type/item/@handle='kapoenen'">
        		<img src="{$workspace}/resources/img/takken/kapoenen.gif" alt="" /> 
		    </xsl:if>
		    <xsl:if test="tak/entry/type/item/@handle='welkas'">
        		<img src="{$workspace}/resources/img/takken/welkas.png" alt="" /> 
		    </xsl:if>
		    <xsl:if test="tak/entry/type/item/@handle='jong-givers'">
        		<img src="{$workspace}/resources/img/takken/jonggivers.png" alt="" /> 
		    </xsl:if>
		    <xsl:if test="tak/entry/type/item/@handle='givers'">
        		<img src="{$workspace}/resources/img/takken/givers.png" alt="" /> 
		    </xsl:if>
		    <xsl:if test="tak/entry/type/item/@handle='jins'">
        		<img src="{$workspace}/resources/img/takken/jins.png" alt="" /> 
		    </xsl:if>
            <h3><xsl:value-of select="tak/entry/naam"/></h3>
            <p><b><xsl:value-of select="tak/entry/kreet"/></b></p>
            <p><xsl:value-of select="tak/entry/leeftijd"/></p>
            <p><a href="mailto:{tak/entry/email-adres}">Contacteer Leiding</a></p>
        </div>
        <hr class="visible-xs" style="margin-bottom : 40px;" />
        <div class="col-sm-9 col-sm-offset-1">
            <div class="row">
			     <xsl:apply-templates select="leiding/entry"/>
            </div>
		</div>
    </div>
</xsl:template>

<xsl:template name="page-title">
        Takken
</xsl:template>

<xsl:template match="leiding/entry">
    <div class="leidingImg col-sm-5">
        <img src="{$root}/image/2/200/200/5/Afbeeldingen/leiding/{foto/filename}" alt="{naam}" class="img-circle"/>
        <p class="title"><xsl:value-of select="naam"/></p>
        <p><xsl:value-of select="straat"/>&#160;<xsl:value-of select="huisnummer"/></p>
        <p><xsl:value-of select="postcode"/>&#160;<xsl:value-of select="stad"/></p>
        <p class="telefoon"><xsl:value-of select="telefoonnummer"/></p>
    </div>
</xsl:template>


</xsl:stylesheet>
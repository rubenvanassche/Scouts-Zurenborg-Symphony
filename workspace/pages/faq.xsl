<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
	<div class="row">
		<div class="col-md-12">
			<ul id="faqSelector">
				<xsl:apply-templates select="faqcat/entry"/>
			</ul>
			
		</div>
		
	</div>
    <div class="row">
        <div class="col-md-12">
            <hr />
            <xsl:apply-templates select="faq/entry"/>
        </div>
    </div>
</xsl:template>

<xsl:template match="faqcat/entry">
	 <xsl:if test="naam/@handle=$categorie">
	 	<li class="active"><a href="{$root}/faq/{naam/@handle}"><img class="faqImage" src="{$workspace}/Afbeeldingen/FAQ/{afbeelding/filename}" /><p><xsl:value-of select="naam"/></p></a></li>
     </xsl:if>
	 <xsl:if test="naam/@handle!=$categorie">
	 	<li><a href="{$root}/faq/{naam/@handle}"><img class="faqImage" src="{$workspace}/Afbeeldingen/FAQ/{afbeelding/filename}" /><p><xsl:value-of select="naam"/></p></a></li>
     </xsl:if>
</xsl:template>

<xsl:template match="faq/entry">
    <h3><xsl:value-of select="vraag"/></h3>
    <p><xsl:value-of select="antwoord"/></p>
</xsl:template>


</xsl:stylesheet>
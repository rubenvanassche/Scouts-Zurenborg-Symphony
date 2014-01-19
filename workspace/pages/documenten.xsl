<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row">
		<div class="col-md-12">
		    <em>Enkele belangrijke documenten vindt u hier.</em> 
		</div>
		<div class="col-md-12" style="margin-top:20px;">
			<xsl:apply-templates select="documenten/entry"/>
		</div>
	</div>  	
</xsl:template>

<xsl:template match="documenten/entry">
	<h3><xsl:value-of select="naam"/></h3>
	<p><xsl:copy-of select="beschrijving"/></p>
	<p><a href="{$workspace}/Documenten/{bestand/filename}">Download bestand</a></p>
	<hr />
</xsl:template>

</xsl:stylesheet>
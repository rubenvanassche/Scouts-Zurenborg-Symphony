<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
    <div class="row">
        <div class="col-md-2 sidebar">
        	<img src="{$workspace}/Afbeeldingen/andere/{global/entry/vzw-logo/filename}" alt="VZW-logo" /> 
        </div>
        <hr class="visible-phone" style="margin-bottom : 40px;" />
        <div class="col-md-9 col-md-offset-1">
			<p><xsl:apply-templates select="global/entry/vzw-informatie"/></p>
		</div>
    </div>
</xsl:template>

</xsl:stylesheet>
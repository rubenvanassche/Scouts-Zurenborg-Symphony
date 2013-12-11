<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
    <div class="row">
        <div class="col-md-12">
        	<p>Er gaat iets mis met onze server, gelieve later nog een terug te komen.</p>
        	<br />
        	<p><a href="{$root}">Terug naar Home</a></p>
        </div>
    </div>
</xsl:template>

<xsl:template name="page-title">
        Probleem
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/data">
	<h1><xsl:copy-of select="doorlinkers/entry/naam"/></h1>
	<p>U wordt automatisch doorgestuurd naar een andere pagina.</p>
	<a href="{doorlinkers/entry/link}">Klik hier</a> om door te gaan.
<script type="text/javascript">
window.location = "<xsl:value-of select="doorlinkers/entry/link"/>"
</script>
</xsl:template>

</xsl:stylesheet>
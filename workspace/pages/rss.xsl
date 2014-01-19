<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<rss version="2.0">
	    <channel>
	        <title><xsl:value-of select="$sp-scouts-naam"/></title>
	        <link><xsl:value-of select="$root"/></link>
	        <description>De RSS feed van <xsl:value-of select="$sp-scouts-naam"/></description>
	        <generator>Symphony</generator>

			<xsl:for-each select="data/berichten/entry">
			    <item>
			        <title><xsl:value-of select="titel"/></title>
			        <link><xsl:value-of select="$root"/>/bericht/<xsl:value-of select="@id"/></link>
			        <description><xsl:value-of select="slagzin"/></description>
				<pubDate><xsl:value-of select="system-date/created"/></pubDate>
				<lastBuildDate><xsl:value-of select="system-date/modified"/></lastBuildDate>
			    </item>
			</xsl:for-each>

	    </channel>
	</rss>
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master-leiding.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:template match="/data">
<div class="row">
	<div class="col-md-3">
		<div class="list-group">
			<xsl:choose>
				<xsl:when test="$soort='takken'">
					<a href="{$root}/private/documenten/takken" class="list-group-item active">
						<h4 class="list-group-item-heading">Takken</h4>
						<p class="list-group-item-text">Hoe maak ik een kampboek, brieven voor het takweekend, ...</p>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<a href="{$root}/private/documenten/takken" class="list-group-item">
						<h4 class="list-group-item-heading">Takken</h4>
						<p class="list-group-item-text">Hoe maak ik een kampboek, brieven voor het takweekend, ...</p>
					</a>
				</xsl:otherwise>
			</xsl:choose>
			
			<xsl:choose>
				<xsl:when test="$soort='materiaal'">
					<a href="{$root}/private/documenten/materiaal" class="list-group-item active">
						<h4 class="list-group-item-heading">Materiaal</h4>
						<p class="list-group-item-text">Wat moet er van materiaal mee op kamp, hoe zet ik een tent op, ...</p>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<a href="{$root}/private/documenten/materiaal" class="list-group-item">
						<h4 class="list-group-item-heading">Materiaal</h4>
						<p class="list-group-item-text">Wat moet er van materiaal mee op kamp, hoe zet ik een tent op, ...</p>
					</a>
				</xsl:otherwise>
			</xsl:choose>
			
			<xsl:choose>
				<xsl:when test="$soort='groep'">
					<a href="{$root}/private/documenten/groep" class="list-group-item active">
						<h4 class="list-group-item-heading">Groep</h4>
						<p class="list-group-item-text">Brieven voor het groepsweekend, verdeling bloemetjesverkoop, ...</p>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<a href="{$root}/private/documenten/groep" class="list-group-item">
						<h4 class="list-group-item-heading">Groep</h4>
						<p class="list-group-item-text">Brieven voor het groepsweekend, verdeling bloemetjesverkoop, ...</p>
					</a>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</div>
	
	<div class="col-md-8 col-md-offset-1">
		<xsl:apply-templates select="infobundels/entry"/>
	</div>
</div>
</xsl:template>

<xsl:template match="infobundels/entry">
		<h3><xsl:value-of select="naam"/></h3>
		<p><xsl:copy-of select="beschrijving" /></p>
		<p><i class="glyphicon glyphicon-cloud-download"> </i> <a href="{$workspace}/infobundels/{bestand/filename}">Download Bestand</a></p>
</xsl:template>

</xsl:stylesheet>
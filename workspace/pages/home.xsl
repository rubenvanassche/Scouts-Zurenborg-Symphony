<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row hidden-xs">
		<div class="col-sm-6">
			<h3>Voorwoord</h3>
		</div>
		<div class="col-sm-6">
			<h3 class="pull-right">Berichten <a href="{$root}/rss"><img style="height:18px;" src="{$workspace}/resources/img/rss.png" /></a></h3>
		</div>
	</div>
	<div class="row">
    	<div class="col-sm-12 visible-xs">
			<h3>Voorwoord</h3>
		</div>
        <div class="col-sm-5" id="voorwoord">
            <xsl:copy-of select="maandblad/entry/voorwoord"/>
        </div>
        <div class="col-sm-12 visible-xs">
        	<hr />
			<h3>Berichten <a href="{$root}/rss"><img style="height:18px;" src="{$workspace}/resources/img/rss.png" /></a></h3>
		</div>
        <div class="col-sm-6 col-sm-offset-1 berichten">

        	<xsl:apply-templates select="berichten-home/entry"/>
        	
        	<p><a  class="pull-right" href="{$root}/berichten">Oudere berichten</a></p>
        </div>
    </div>
</xsl:template>

<xsl:template match="berichten-home/entry">
	<div class="bericht">
		<div class="title">
			<xsl:value-of select="titel"/>
		</div>
			<div class="caption">
			<xsl:value-of select="slagzin"/>
		</div>
		<div class="readmore">
			<a href="{$root}/bericht/{@id}">Lees meer <i class="glyphicon glyphicon-chevron-right"></i></a>
		</div>
	</div>
</xsl:template>



</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/phone-converter.xsl"/>

<xsl:template match="data">
    <div class="row">
        <div class="col-md-8">
            <div class="thumbnail">
                <div id="map"></div>
            </div>
        </div>
        <div class="col-md-4">
            <h2 style="margin-top: 0px;"><xsl:value-of select="$sp-scouts-naam"/></h2>
            <i><xsl:value-of select="$sp-scouts-naamvolledig"/></i>
            <p> </p>
            <p><xsl:value-of select="$sp-scouts-adres"/></p>
            <p><b>Rekeningnummer : </b><xsl:value-of select="$sp-scouts-rekeningnummer"/></p>
            
            <h3>Contact</h3>
            <i><xsl:value-of select="$sp-scouts-contactinformatie"/></i>
            <p>
                <br />
                    <xsl:for-each select="leiding/entry">
					    <xsl:if test="groepsleiding='Yes'">
					        <i class="glyphicon glyphicon-user" style="margin-right:6px;"></i> <b><a href="mailto:{email-adres}"><xsl:value-of select="naam"/></a></b> : <span class="telefoon"><xsl:value-of select="telefoonnummer" /></span> <br />
					    </xsl:if>
				    </xsl:for-each>
            </p>
            <h3>Vragen?</h3>
            <p>Waar moeten al die tekens op het uniform? Hoe kan ik mijn kind inschrijven? Hoe moet ik het lidgeld betalen? Alle antwoorden vindt u terug in onze <a href="{$root}/faq">FAQ</a>. Staat uw vraag er niet bij? Aarzel dan zeker niet om ons te contacteren.</p>
        </div>
    </div>
</xsl:template>

<xsl:template name="extra-css">
	<link rel="stylesheet" href="{$workspace}/resources/css/leaflet.css" />
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="{$workspace}/resources/css/leaflet.ie.css" />
    <![endif]-->
</xsl:template>

<xsl:template name="extra-js">
    <script src="{$workspace}/resources/js/leaflet.js"></script>
    <script src="{$workspace}/resources/js/leaflet-providers.js"></script>
    <script type="text/javascript">
        // create a map in the "map" div, set the view to a given place and zoom
        var naam = '<xsl:value-of select="$sp-scouts-naam" />';
        var leng = '<xsl:value-of select="$sp-scouts-lengtegraad" />';
        var breed = '<xsl:value-of select="$sp-scouts-breedtegraad" />';

        var map = L.map('map').setView([leng, breed], 17);

        // add an OpenStreetMap tile layer
        L.tileLayer.provider('Esri').addTo(map);

        // add a marker in the given location, attach some popup content to it and open the popup
        var popup = L.popup({maxWidth:800, closeOnClick:false})
            .setLatLng([leng, breed])
            .setContent(naam)
            .openOn(map);
    </script>
</xsl:template>


</xsl:stylesheet>
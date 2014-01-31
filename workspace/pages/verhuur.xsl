<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
 <div class="row">
    <div class="col-md-12">
    	<h3>Algemeen</h3>
    	<p><xsl:value-of select="$sp-scouts-materiaalverhuur"/></p>
    	<xsl:for-each select="verhuurders/entry">
		         <p><i class="glyphicon glyphicon-user" style="margin-right:6px;"></i><b><xsl:value-of select="naam"/></b> : <span class="telefoon"><xsl:value-of select="telefoonnummer"/></span></p>
		</xsl:for-each>
    	<h3>Verhuurlijst</h3>
        <table id="verhuurtable" class="table table-condensed">
            <thead>
                <tr>
                    <th>Afbeelding</th>
                    <th>Beschrijving</th>
                    <th class="pull-right">Prijs/stuk</th>
                </tr>
            </thead>
            <tbody>
				<xsl:apply-templates select="verhuurlijst/entry"/>
            </tbody>
        </table>
        
    </div>
</div>
</xsl:template>

<xsl:template match="verhuurlijst/entry">
	<tr>
	    <td><img src="{$workspace}/Afbeeldingen/verhuur/{afbeelding/filename}"/></td>
	    <td><b><xsl:value-of select="naam"/></b><p><xsl:value-of select="beschrijving"/></p></td>
	    <td>
	        <span class="label label-primary pull-right">&#8364;<xsl:value-of select="prijs"/></span>
	    </td>
	</tr>
</xsl:template>


</xsl:stylesheet>
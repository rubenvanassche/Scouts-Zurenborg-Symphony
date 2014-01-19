<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<!-- when there is no selector !-->
	<xsl:if test="$selector=''">
		<script type="text/javascript">
			var currentVersion = "<xsl:value-of select="maandblad-huidig/entry/selector/@handle"/>";
			var root = "<xsl:value-of select="params/root"/>";
			if(currentVersion != ''){
				window.location = root + '/maandblad/' + currentVersion;
			}else{
				window.location = root + '/vorige-maandbladen/';
			}
		</script>
	</xsl:if>

 	<div id="maandbladviewer" class="row">
		<div class="col-sm-2">
			<h3><xsl:copy-of select="maandblad/entry/maand"/></h3>
			<ul id="selector">
				<!-- Make voorwoord selected when it is showed !-->
				<xsl:if test="$pagina=''">
					<li class="selected"><i class=""></i><a href="{$root}/maandblad/{$selector}">Voorwoord</a></li>
				</xsl:if>
				<xsl:if test="$pagina!=''">
					<li><i class=""></i><a href="{$root}/maandblad/{$selector}">Voorwoord</a></li>
				</xsl:if>

				<xsl:apply-templates select="maandblad-extra/entry"/>
				<!-- Now do something difficult, check for each tak if there is a maandblad -->
				<xsl:for-each select="tak/entry">
					<xsl:variable name="taknaam" select="naam/@handle" />
					<xsl:variable name="maandbladtakid" select="//data/maandblad-tak/entry/tak/item[@handle=$taknaam]/../../@id" />

					<xsl:if test="$maandbladtakid!=''">
						<xsl:choose>
							<xsl:when test="$type='tak' and $pagina=$maandbladtakid"> 
								<li class="selected"><a href="{$root}/maandblad/{$selector}/tak/{$maandbladtakid}"><xsl:copy-of select="naam"/></a></li>
							</xsl:when> 
							<xsl:otherwise> 
								<li><a href="{$root}/maandblad/{$selector}/tak/{$maandbladtakid}"><xsl:copy-of select="naam"/></a></li>
							</xsl:otherwise> 
						</xsl:choose> 
					</xsl:if>
				</xsl:for-each>

				<li id="olders"><i style="color:#333;" class="glyphicon glyphicon-book"></i><a href="{$root}/vorige-maandbladen/">Vorige maandbladen</a></li>
			</ul>
		</div>
		<div class="col-sm-10" style="margin-top:20px;">
			<xsl:if test="$pagina=''">
				<!-- Voorwoord -->
				<p><xsl:copy-of select="maandblad/entry/voorwoord"/></p>
			</xsl:if>
			<xsl:if test="$pagina!=''">
				<!-- Geen Voorwoord -->
					<xsl:choose>
						<xsl:when test="$type='extra'"> 
							<!-- Extra Pagina -->
							<xsl:choose>
								<xsl:when test="maandblad-extra/entry[@id=$pagina]/tekst!=''">
									<!-- HTML -->
									<p><xsl:copy-of select="maandblad-extra/entry[@id=$pagina]/tekst"/></p>
								</xsl:when>
								<xsl:when test="maandblad-extra/entry[@id=$pagina]/afbeelding!=''">
									<!-- picture -->
									<img class="img-responsive" src="{$workspace}/Afbeeldingen/maandblad/{maandblad-extra/entry[@id=$pagina]/afbeelding/filename}"/>
								</xsl:when>
								<xsl:otherwise> 
									<p>Deze pagina bestaat niet!</p>
								</xsl:otherwise> 
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$type='tak'"> 
							<!-- tak Pagina -->
							<img class="img-responsive" src="{$workspace}/Afbeeldingen/maandblad/{maandblad-tak/entry[@id=$pagina]/afbeelding/filename}"/>
						</xsl:when> 
						<xsl:otherwise> 
							<p>Deze pagina bestaat niet!</p>
						</xsl:otherwise> 
					</xsl:choose> 
			</xsl:if>
		</div>
	</div>

	<div class="row hidden-md hidden-lg" style="margin-top:15px;">
		<div class="col-sm-12">
			<!-- show link to image for mobile phones -->
			<xsl:choose>
				<xsl:when test="$type='extra'"> 
					<!-- Extra Pagina -->
					<xsl:choose>
						<xsl:when test="maandblad-extra/entry[@id=$pagina]/tekst!=''">
						</xsl:when>
						<xsl:when test="maandblad-extra/entry[@id=$pagina]/afbeelding!=''">
							<!-- picture -->
							<a class="pull-right" href="{$workspace}/Afbeeldingen/maandblad/{maandblad-extra/entry[@id=$pagina]/afbeelding/filename}"><i class="glyphicon glyphicon-fullscreen" style="color:#333;"></i> Grotere afbeelding</a>
						</xsl:when>
						<xsl:otherwise> 
						</xsl:otherwise> 
					</xsl:choose>
				</xsl:when>
				<xsl:when test="$type='tak'"> 
					<!-- tak Pagina -->
					<a class="pull-right" href="{$workspace}/Afbeeldingen/maandblad/{maandblad-tak/entry[@id=$pagina]/afbeelding/filename}"><i class="glyphicon glyphicon-fullscreen"></i> Grotere afbeelding</a>
				</xsl:when> 
				<xsl:otherwise> 
				</xsl:otherwise> 
			</xsl:choose> 
	    </div>
	</div>	
</xsl:template>

<xsl:template name="extra-js">
	<script src="{$workspace}/resources/js/tinynav.js"></script>
    <script>
	  $(function () {
	    $("#selector").tinyNav();
	  });
	</script>
</xsl:template>

<xsl:template match="maandblad-extra/entry">
	<xsl:choose>
		<xsl:when test="$type='extra' and $pagina=@id"> 
			<li class="selected"><a href="{$root}/maandblad/{$selector}/extra/{@id}"><xsl:copy-of select="naam"/></a></li>
		</xsl:when> 
		<xsl:otherwise> 
			<li><a href="{$root}/maandblad/{$selector}/extra/{@id}"><xsl:copy-of select="naam"/></a></li>
		</xsl:otherwise> 
	</xsl:choose> 
</xsl:template>


</xsl:stylesheet>
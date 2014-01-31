<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row">
		<div class="col-md-12">
			<p>Deze sectie van de website is enkel toegankelijk voor leiding, gelieve in te loggen.</p>
		</div>
		<div class="col-md-12">			
              <form class=" form-horizontal" method="post" autocomplete="off">
                  <div class="form-group col-md-12 has-feedback">
                      <input type="text" class="form-control" id="inputEmail" placeholder="Gebruikersnaam" name="fields[gebruikersnaam]" />
                  </div>
                  <div class="form-group  col-md-12">
                      <input type="password" class="form-control" id="inputPassword" placeholder="Wachtwoord" name="fields[wachtwoord]" />
                      <input name="redirect" type="hidden" value="{$root}/private/" />
                  </div>
                  <div class="form-group col-md-12">
                  		<a href="#" class="btn btn-danger pull-left">Wachtwoord vergeten?</a>
                      <input name="member-action[login]" class="btn btn-info pull-right" type="submit" value="Inloggen" />
                  </div>
              </form>
		
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
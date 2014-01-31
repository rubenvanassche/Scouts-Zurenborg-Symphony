<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master-leiding.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:template match="/data">
	<xsl:variable name="memberid" select="/data/events/member-login-info/@id" />
	<xsl:apply-templates select="leiding/entry[@id=$memberid]"/>
</xsl:template>

<xsl:template match="leiding/entry">
	<div class="row">
		<div class=" col-md-12">
			<xsl:if test="/data/events/wijzigen-gegevens/@result='success'">
				<div class="alert alert-dismissable alert-success">
	              <button type="button" class="close" data-dismiss="alert">x</button>
	              <strong>Gelukt!</strong> Gegevens zijn succesvol gewijzigd.
	            </div>
			</xsl:if>
			
			<xsl:if test="/data/events/wijzigen-gegevens/@result='error'">
				<div class="alert alert-dismissable alert-danger">
	              <button type="button" class="close" data-dismiss="alert">x</button>
	              <h4>Er ging iets fout, je hebt een veld niet juist ingevuld!</h4>
	              <p><xsl:value-of select="/data/events/wijzigen-gegevens/straat/@message" /></p>
	              <p><xsl:value-of select="/data/events/wijzigen-gegevens/huisnummer/@message" /></p>
	              <p><xsl:value-of select="/data/events/wijzigen-gegevens/stad/@message" /></p>
	              <p><xsl:value-of select="/data/events/wijzigen-gegevens/postcode/@message" /></p>
	              <p><xsl:value-of select="/data/events/wijzigen-gegevens/telefoonnummer/@message" /></p>
	              <p><xsl:value-of select="/data/events/wijzigen-gegevens/wachtwoord/@message" /></p>
	            </div>
			</xsl:if>
		</div>
		
		<form method="post" action="" class="col-lg-12" enctype="multipart/form-data">
		<input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
			<div class="form-group">
				<label>Straat</label>
				<input type="text" name="fields[straat]" class="form-control" value="{straat}" />
			</div>
			<div class="form-group">
				<label>Huisnummer</label>
				<input type="number" name="fields[huisnummer]" class="form-control" value="{huisnummer}" />
			</div>
			<div class="form-group">
				<label>Stad</label>
				<input type="text" name="fields[stad]" class="form-control" value="{stad}" />
			</div>
			<div class="form-group">
				<label>Postcode</label>
				<input type="number" name="fields[postcode]" class="form-control" value="{postcode}" />
			</div>
			<div class="form-group">
				<label>Telefoonnummer</label>
				<input type="text" name="fields[telefoonnummer]" class="form-control" value="{telefoonnummer}" />
			</div>
			<div class="form-group">
				<label>Wachtwoord</label>
				<input type="password" name="fields[wachtwoord][password]" class="form-control" />
			</div>
			<div class="form-group">
				<label>Wachtwoord (opnieuw)</label>
				<input type="password" name="fields[wachtwoord][confirm]" class="form-control"  />
			</div>
			<div class="form-group">
				<i>Indien je het wachtwoord veld leeg laat, dan zal je wachtwoord niet gewijzigd worden.</i>
			</div>
			<input name="fields[date]" type="hidden" value="{$today} {$current-time}" />
			<input name="id" type="hidden" value="{@id}" />
			<input name="action[wijzigen-gegevens]" type="submit" value="Wijzigen" class="btn btn-info pull-right" />
		</form>
	</div>
</xsl:template>


</xsl:stylesheet>
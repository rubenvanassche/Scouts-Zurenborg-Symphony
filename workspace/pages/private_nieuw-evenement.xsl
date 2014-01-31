<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master-leiding.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:template match="/data">
<div class="row">
	<div class=" col-md-12">
		<xsl:if test="/data/events/nieuw-evenement/@result='success'">
			<div class="alert alert-dismissable alert-success">
              <button type="button" class="close" data-dismiss="alert">x</button>
              <strong>Gelukt!</strong> Nieuw evenement toegevoegd.
            </div>
		</xsl:if>
		
		<xsl:if test="/data/events/nieuw-evenement/@result='error'">
			<div class="alert alert-dismissable alert-danger">
              <button type="button" class="close" data-dismiss="alert">x</button>
              <h4>Er ging iets fout, je hebt een veld niet juist ingevuld!</h4>
              <p><xsl:value-of select="/data/events/nieuw-evenement/naam/@message" /></p>
              <p><xsl:value-of select="/data/events/nieuw-evenement/datum/@message" /></p>
              <p><xsl:value-of select="/data/events/nieuw-evenement/beschrijving/@message" /></p>
            </div>
		</xsl:if>
	</div>
	
	<div class="col-md-12" style="">
		<form method="post" action="" enctype="multipart/form-data">
			<input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
			<div class="form-group">
				<label>Naam van evenement</label>
				<input name="fields[naam]" class="form-control" type="text" />
			</div>
			
			<div class="form-group">
				<label>Start Datum en tijd(dd-mm-yyyy uu:mm)</label>
				<input name="fields[datum][start][]" class="form-control"  type="text" />
			</div>

			<div class="form-group">
				<label>Eind Datum en tijd(dd-mm-yyyy uu:mm)</label>
				<input name="fields[datum][end][]" class="form-control"  type="text" />
			</div>
			
			<div class="form-group">
				<label>Beschrijving</label>
				<textarea name="fields[beschrijving]" class="form-control" rows="15" cols="50"></textarea>
			</div>
			<input name="redirect" type="hidden" value="http://localhost:8888/symphony/private/" />
			<a href="{$root}/private/" class="btn btn-danger pull-left">Terug</a>
			<input name="action[nieuw-evenement]" class="btn btn-info pull-right" type="submit" value="Toevoegen" />
		</form>
	</div>
</div>
</xsl:template>


</xsl:stylesheet>
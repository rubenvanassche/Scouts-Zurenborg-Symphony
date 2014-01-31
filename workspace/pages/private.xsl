<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master-leiding.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:template match="/data">
<div class="row">
	<div class="col-md-12" style="">
		<i><a href="{$root}/private/icsagendahelp">Klik hier</a> om deze agenda in uw computer, smartphone of tablet te zetten.</i>
		<a class="pull-right" href="#">Toevoegen <i class="glyphicon glyphicon-plus"> </i></a>
		<hr />
	</div>
</div>
	    	<xsl:apply-templates select="agenda/entry"/>
</xsl:template>

<xsl:template match="agenda/entry">
    <div class="row">	    
	    <div class="col-sm-3 col-md-2 col-xs-12">
		    <div class="datefield">
		    	<div class="date">
				    <xsl:call-template name="format-date">
			        	<xsl:with-param name="date" select="datum/date/start"/>
			        	<xsl:with-param name="format" select="'x m'"/>
			        </xsl:call-template>
			        
			        <xsl:if test="datum/date/start!=datum/date/end">
				        <xsl:if test="datum/date/end">
				        	 - 
						    <xsl:call-template name="format-date">
					        	<xsl:with-param name="date" select="datum/date/end"/>
					        	<xsl:with-param name="format" select="'x m'"/>
					        </xsl:call-template>
				        </xsl:if>
			        </xsl:if>
			    </div>
			    
			    <div class="time">
			    	<xsl:call-template name="format-date">
			        	<xsl:with-param name="date" select="datum/date/start"/>
			        	<xsl:with-param name="format" select="'T'"/>
			        </xsl:call-template>
			        
			        <xsl:if test="datum/date/start/@time!=datum/date/end/@time">
				        <xsl:if test="datum/date/end">
				        	 - 
						    <xsl:call-template name="format-date">
					        	<xsl:with-param name="date" select="datum/date/end"/>
					        	<xsl:with-param name="format" select="'T'"/>
					        </xsl:call-template>
				        </xsl:if>
			        </xsl:if>
			    </div>
		    </div>
	    </div>
	    <div class="col-sm-9 col-md-10 col-xs-12 agendainfo">
	    	    <h4><xsl:value-of select="naam"/></h4>
	    	    <p><xsl:value-of select="beschrijving"/></p>
	    </div>
	</div>
</xsl:template>

</xsl:stylesheet>
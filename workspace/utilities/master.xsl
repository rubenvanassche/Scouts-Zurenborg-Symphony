<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-W3CDTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />


<xsl:template match="/">
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <title><xsl:value-of select="data/global/entry/naam"/> - <xsl:call-template name="page-title"/></title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            
            <!-- CSS -->
            <link href="{$workspace}/resources/css/bootstrap.css" rel="stylesheet" />
            <!-- <link href="{$workspace}/resources/css/bootstrap-theme.css" rel="stylesheet" /> -->
            <link href="{$workspace}/resources/css/style.css" rel="stylesheet" />
            <style>
                #background{
                    background-image: url("<xsl:call-template name="background-image"/>");
                }
            </style>
            <xsl:call-template name="extra-css"/>
            
            <!-- IE6-8 Support -->
            <!--[if lt IE 9]>
              <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->
        </head>
        <body>
            <div id="background">
            </div>
            <div class="container">
                <!-- Navigation -->
                <nav class="navbar navbar-default" role="navigation">
                    <!-- Name + Button for responsive view -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="{$root}"><xsl:value-of select="data/global/entry/naam"/></a>
                    </div>

                    <!-- Links -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="{$root}/informatie">Informatie</a></li>
                        <li><a href="{$root}/maandblad">Maandblad</a></li>
                        <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Takken <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="{$root}/tak/kapoenen">Kapoenen</a></li>
                            <li><a href="{$root}/tak/jacala">Jacala's</a></li>
                            <li><a href="{$root}/tak/chikai">Chikai</a></li>
                            <li><a href="{$root}/tak/jonggivers-i">Jonggivers I</a></li>
                            <li><a href="{$root}/tak/jonggivers-ii">Jonggivers II</a></li>
                            <li><a href="{$root}/tak/givers-i">Givers I</a></li>
                            <li><a href="{$root}/tak/givers-ii">Givers II</a></li>
                            <li><a href="{$root}/tak/jins">Jins</a></li>
                            <li class="divider"></li>
                            <li><a href="{$root}/leiding/">Iedereen</a></li>            
                        </ul>
                        </li>
                        <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Groep <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="{$root}/groepsleiding">Groepsleiding</a></li>
                            <li><a href="{$root}/verhuur">Verhuur</a></li>
                            <li><a href="{$root}/vzw">VZW</a></li>              
                        </ul>
                        </li>
                        <li><a href="{$root}/faq/algemeen/">FAQ</a></li>
                    </ul>
                    </div>
                </nav>


                <div class="row">
                    <div class="col-xs-12">
                        <h1 id="pagetitle"><xsl:call-template name="page-title"/></h1>
                        <img id="scoutslogo" src="{$workspace}/resources/img/logowhite.png" />
                    </div>
                </div>
            </div>
            
            <div id="content" class="container">
                <xsl:apply-templates select="data/banners/entry"/>
                <xsl:apply-templates />
            </div>
            
            <!-- JS -->
            <script src="{$workspace}/resources/js/jquery.js"></script>
            <script src="{$workspace}/resources/js/bootstrap.js"></script>
            <xsl:call-template name="extra-js"/>

            <!-- Statistics -->
            <script> (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-43995110-1', 'scouts-zurenborg.be'); ga('send', 'pageview'); </script> 

        </body>
    </html>
</xsl:template>

<xsl:template name="page-title">
    <xsl:value-of select="data/params/page-title"/>
</xsl:template>

<xsl:template name="extra-css">

</xsl:template>

<xsl:template name="background-image">
    <xsl:value-of select="data/params/workspace"/>/Afbeeldingen/achtergrond/<xsl:value-of select="data/achtergrondafbeeldingen/entry/afbeelding/filename"/>
</xsl:template>

<xsl:template match="data/banners/entry">
    <div class="row">
        <div class="col-xs-12">
            <xsl:if test="kleur/item='geel'">
                <div class="alert alert-warning">
                    <xsl:value-of select="inhoud"/> <a class="pull-right alert-link" href="{link}">Lees meer&#187;</a>
                </div>
            </xsl:if>
            <xsl:if test="kleur/item='groen'">
                <div class="alert alert-success">
                    <xsl:value-of select="inhoud"/> <a class="pull-right alert-link" href="{link}">Lees meer&#187;</a>
                </div>
            </xsl:if>
            <xsl:if test="kleur/item='paars'">
                <div class="alert alert-info">
                    <xsl:value-of select="inhoud"/> <a class="pull-right alert-link" href="{link}">Lees meer&#187;</a>
                </div>
            </xsl:if>
            <xsl:if test="kleur/item='rood'">
                <div class="alert alert-danger">
                    <xsl:value-of select="inhoud"/> <a class="pull-right alert-link" href="{link}">Lees meer&#187;</a>
                </div>
            </xsl:if>
        </div>
    </div>
</xsl:template>

<xsl:template name="extra-js">

</xsl:template>


</xsl:stylesheet>
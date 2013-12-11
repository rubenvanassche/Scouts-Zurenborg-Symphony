<?xml version="1.0" encoding="UTF-8"?>
 
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:string="http://symphony-cms.com/functions"
                xmlns:_string="http://symphony-cms.com/functions"
                xmlns:func="http://exslt.org/functions"
                extension-element-prefixes="func">

<func:function name="string:phoneconvert">
        <xsl:param name="in" />
        <func:result>
            <xsl:choose>
                <xsl:when test="string_length($in)=9">
                    Telefoon
                </xsl:when>
                <xsl:when test="string_length($in)=10">
                    gsm
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$in" />
                </xsl:otherwise>
            </xsl:choose>
        </func:result>
    </func:function>

</xsl:stylesheet>
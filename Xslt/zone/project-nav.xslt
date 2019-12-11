<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="nav-1">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <h1 class="title-h1-grey"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
                <p><xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of></p>
            </div>
            <div class="col-sm-12 col-lg-6">
                <nav class="row no-gutters">
                    <xsl:apply-templates select="Zone" mode="Zone1"></xsl:apply-templates>
                </nav>
                <!-- <select data-nav>
                    <option value="/">overview</option>
                    <option value="#">overview</option>
                    <option value="#">overview</option>
                    <option value="#" selected>overview</option>
                    <option value="#">overview</option>
                    <option value="#">overview</option>
                </select> -->
            </div>
        </div>
        
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
       <a>
       <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
       <xsl:attribute name="href">
           <xsl:value-of select="Url"></xsl:value-of>
       </xsl:attribute>
       <xsl:attribute name="title">
           <xsl:value-of select="Title"></xsl:value-of>
       </xsl:attribute>
       <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
       </a>
    </xsl:template>
</xsl:stylesheet>
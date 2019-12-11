<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="project-slider">
            <div class="row"> 
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                       
                    </div>
                </div>
                <div class="swiper-navigation">
                    <div class="project-button-prev"><em class="mdi mdi-chevron-left"></em></div>
                    <div class="project-button-next"><em class="mdi mdi-chevron-right"></em></div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
    <xsl:if test="position() &gt; 1">
    <div class="swiper-slide"> <a class="img">
        
        <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <img>
        <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        </img>
        </a><a class="project-title">
        
        <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </a></div>
    </xsl:if>
        
        
    </xsl:template>
</xsl:stylesheet>
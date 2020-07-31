<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="contact-information-wrapper" setbackground="/Data/Sites/1/media/footer-bg.png">
            <div class="row">
            <div class="col-12">
            <h1><xsl:value-of disable-output-escaping="yes" select="/NewsList/Module"></xsl:value-of></h1>
            </div>
            <div class="col-12">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
            </div>
            </div>
    </xsl:template>
    <xsl:template match="News">
            <div class="location">
            <div class="box">
            <div class="icon"><em class="mdi mdi-home"></em></div>
            <div class="caption">
            <p class="text"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of> </p>
            <p class="text"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></p>
            </div>
            </div>
            <div class="box">
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
            </div>
    </xsl:template>
</xsl:stylesheet>
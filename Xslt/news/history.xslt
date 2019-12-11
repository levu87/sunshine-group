<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="history-section"> 
				<div class="container"> 
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="row box-text">
            <div class="col-12 col-lg-6 title">
                <h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
            </div>
            <div class="col-12 col-lg-6">
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
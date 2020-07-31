<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="business-page-list">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-4 col-md-6">
            <div class="business-item"><a>
            
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                
                    <article>
                        <div class="imgbox">
                            <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
                        <div class="info">
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </p>
                        </div>
                    </article></a></div>
        </div>
    </xsl:template>
</xsl:stylesheet>
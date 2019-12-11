<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="new-wrapper">
				<div class="career-2">
					<div class="container">
						<div class="row career-news-list tab-item active" id="tab-1">
                        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							
							
							
							
							
						</div>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-sm-6 col-md-3">
            <article class="career-news-item">
                <div class="imgbox">
                    <a>
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
                    </a>
                    </div>
                <div class="info">
                    <h3>
                        <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a>
                    </h3>
                    <div class="sub-title"> <a>
                
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">View more</xsl:text>
                    <em class="mdi mdi-chevron-right"></em></a></div>
                </div>
            </article>
        </div>
    </xsl:template>
</xsl:stylesheet>
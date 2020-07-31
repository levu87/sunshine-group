<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="career-job"> 
				<div class="career-1">
					<div class="container">
						<h2 class="big-title">Job Opening</h2>
						<div class="row">
                            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							
							
							
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-md-6 item-col">
            <div class="item">
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
                </h3><span><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></span>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
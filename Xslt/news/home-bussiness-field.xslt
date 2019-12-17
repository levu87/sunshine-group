<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="business">
				<div class="container">
					<h1 class="title-h1-grey" data-aos="fade-down"
     data-aos-easing="linear"
     data-aos-duration="1500"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
					<div class="business-wrapper">
						<div class="business-slider" data-aos="fade-down"
     data-aos-easing="linear"
     data-aos-duration="1500">
							<div class="swiper-container">
								<div class="swiper-wrapper">
                                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
									
									
								</div>
							</div>
							<div class="swiper-navigation">
								<div class="business-button-prev"><em class="mdi mdi-chevron-left"></em></div>
								<div class="business-button-next"><em class="mdi mdi-chevron-right"></em></div>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="img"> 
                <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
            <div class="slider-text">
                <h4>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h4><a class="detail-btn">
                
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:text disable-output-escaping="yes">detail</xsl:text>
                <em class="mdi mdi-plus"></em></a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
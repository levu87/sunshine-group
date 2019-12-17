<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="partner-swiper">
				<div class="container">
					<div class="news-title"> 
						<h1 class="title-h1-white" data-aos="fade-down"
     data-aos-easing="linear"
     data-aos-duration="1500"><xsl:value-of disable-output-escaping="yes" select="/BannerList/ModuleTitle"></xsl:value-of></h1>
					</div>
					<div class="partnet-swiper-wrapper" data-aos="fade-up"
     data-aos-easing="linear"
     data-aos-duration="1500">
						<div class="navigation-partner-prev"><em class="mdi mdi-chevron-left"></em></div>
						<div class="navigation-partner-next"><em class="mdi mdi-chevron-right"></em></div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
								
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
									<div class="swiper-image">
                                        <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        </img>
                                    </div>
								</div>
    </xsl:template>
</xsl:stylesheet>
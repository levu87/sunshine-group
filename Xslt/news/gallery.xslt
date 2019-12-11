<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="gallery-wrapper">
				<div class="career-2">
					<div class="container">
						<!-- <div class="tab-item active" id="tab-2"> -->
							<div class="row">
                                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
								
								
								
							</div>
						<!-- </div> -->
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-sm-6 col-lg-3">
            <div class="figure-lightgallery">
                <div class="figure-image lightgallery">
               <a class="swiper-image fancybox-gallery" data-fancybox="image">
          <xsl:attribute name="href">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
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
                <figcaption>
                    <p class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></p>
                </figcaption>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
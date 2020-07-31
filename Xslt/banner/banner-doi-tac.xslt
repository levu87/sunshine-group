<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="khachhang-slider">
				<div class="container">
					<div class="slider">
						<div class="row">
							<div class="col-12">
								<div class="tab-wrapper">
									<div class="tab-item active" id="tab-1">
										<div class="swiper-container">
											<div class="swiper-wrapper">
                                                <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
												
											</div>
                                            <div class="view-more-brand"><a><span><xsl:value-of disable-output-escaping="yes" select="/BannerList/VMText"></xsl:value-of></span><em class="mdi mdi-chevron-down"></em></a></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="item">
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
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
		<section class="khach-hang">
				<div class="container">
					<div class="slider">
						<div class="row">
							<div class="col-12 khachhang-slider">
								<div class="tab-wrapper">
									<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="tab-content">
            <xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text> tab-content active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text> tab-content active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News" mode="mode"></xsl:apply-templates>
                    
                    
                </div>
            </div>
                <!-- <div class="swiper-navigation">
                    <div class="customer-button-prev"><em class="mdi mdi-chevron-left"></em></div>
                    <div class="customer-button-next"><em class="mdi mdi-chevron-right"></em></div>
                </div> -->
            <div class="view-more-brand"><a><span>View more</span><em class="mdi mdi-chevron-down"></em></a></div>
        </div>
								
    </xsl:template>
    <xsl:template match="News" mode="mode">
        <div class="swiper-slider col">
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
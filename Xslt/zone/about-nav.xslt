<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="aboutus-nav">
				<div class="container aboutus-wrapper">
					<div class="row">
						<div class="title-h1-grey" data-aos="fade-down" data-aos-duration="1500"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Title"></xsl:value-of></div>
						<div class="row box-top">
							<div class="col-lg-6">
								<div class="content">
									<p><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Description"></xsl:value-of></p>
								</div>
							</div>
							<div class="col-lg-6">
								<nav class="row no-gutters">
                                    <xsl:apply-templates select="/ZoneList/Zone" mode="link"></xsl:apply-templates>
                                </nav>
							</div>
						</div>
                        <xsl:apply-templates select="/ZoneList/Zone" mode="Image"></xsl:apply-templates>
                    
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Zone" mode="link">
        <a>
			<!-- <xsl:if test="SecondImageUrl != ''">
				<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			</xsl:if> -->
			
			


			<xsl:choose>
				<xsl:when test="SecondImageUrl != ''">
					<xsl:attribute name="href">
						<xsl:value-of select="SecondImageUrl"></xsl:value-of>
					</xsl:attribute>
				
					<xsl:attribute name="target">
					<xsl:text>_blank</xsl:text>
					</xsl:attribute>

					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>

						<xsl:if test="IsActive='true'">
							<xsl:attribute name="class">
								<xsl:text>active</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:otherwise>
			</xsl:choose>
		</a>
    </xsl:template>
    <xsl:template match="Zone" mode="Image">
            <xsl:if test="IsActive='true'">
			<xsl:if test="ImageUrl != ''">
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
			</xsl:if>
		</xsl:if>
    </xsl:template>
</xsl:stylesheet>
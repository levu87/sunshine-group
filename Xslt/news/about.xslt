<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="about-section"> 
				
                    <xsl:apply-templates select="/NewsList/News" mode="mode1"></xsl:apply-templates>

                    <xsl:apply-templates select="/NewsList/News" mode="mode2"></xsl:apply-templates>

					
					<xsl:apply-templates select="/NewsList/News" mode="mode3"></xsl:apply-templates>

					<xsl:apply-templates select="/NewsList/News" mode="mode4"></xsl:apply-templates>

			
			</section>
    </xsl:template>
    <xsl:template match="News" mode="mode1">
        <xsl:if test="position() = 1">
            <div class="container">
				<div class="row vision">
					<div class="col-12 col-lg-6 title content" data-aos="fade-right" data-aos-duration="900">
						<div class="box-text">
							<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
					<div class="col-12 col-lg-6 box-img" data-aos="fade-left">

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
			</div>
        </xsl:if>
    </xsl:template>
	<xsl:template match="News" mode="mode2">
		<xsl:if test="position()= 2">
			<div class="mission"> 
				<div class="col-6 box-img" data-aos="fade-right" data-aos-duration="900">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="col-6 content" data-aos="fade-left" data-aos-duration="900">
					<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
		
	</xsl:template>
	
	<xsl:template match="News" mode="mode3">
		<xsl:if test="position()= 3">
			<div class="core-value">
				<div class="container">
					<div class="row">
						<div class="col-12 col-lg-6 box-text" data-aos="fade-left" data-aos-duration="900">
							<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
						<div class="col-12 col-lg-6 box-img" data-aos="fade-right" data-aos-duration="900">
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
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="mode4">
		<xsl:if test="position() = 4">
			<div class="why">
				<div class="col-12 col-lg-6 box-img">
					<img class="lazyload">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="col-12 col-lg-6 list-group" data-aos="fade-up" data-aos-duration="900">
					<h2 data-aos="fade-up" data-aos-duration="900"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
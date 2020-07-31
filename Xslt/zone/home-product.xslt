<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<section class="home-product">
			<div class="container">
				<h1 class="title-h1-white" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h1>
				<div class="product-wrapper">
					<div class="product-slider1" data-aos="fade-right" data-aos-offset="300"
						data-aos-easing="ease-in-sine">
						<div class="row">
							<xsl:apply-templates select="/ZoneList/Zone" mode="Top"></xsl:apply-templates>

						</div>
					</div>
					<div class="product-slider2" data-aos="fade-left" data-aos-offset="300"
						data-aos-easing="ease-in-sine">
						<div class="swiper-container">
							<div class="swiper-wrapper">

								<xsl:apply-templates select="/ZoneList/Zone" mode="Bottom"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-navigation">
							<div class="product-button-prev"><em class="mdi mdi-chevron-left"></em></div>
							<div class="product-button-next"><em class="mdi mdi-chevron-right"></em></div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Top">
		<xsl:if test="position() &gt; 0 and position() &lt; 4">
			<div class="col-4 item1">
				<a class="img">

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
				<a class="product-title">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Bottom">
		<xsl:if test="position() &gt; 3">
			<div class="swiper-slide">
				<a class="img">

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
				<a class="product-title">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="/ZoneList/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</div>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
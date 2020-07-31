<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="product-detail">
			<div class="container">
				<div class="top">
					<h1 class="title-h1-grey">
						<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
						<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h1>
					<div class="back"><a>
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/ZoneUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/BackText"></xsl:value-of>
						</a></div>
				</div>
				<p>
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/SubTitle"></xsl:value-of>
				</p>
			</div>
		</div>

		<section class="project-detail-slider">
			<div class="container">
				<div class="project-detail">
					<div class="row">
						<xsl:if test="count(/NewsDetail/NewsImages)>0">

							<div class="col-12">
								<div class="swiper-container project-gallery-top">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Big">
										</xsl:apply-templates>
									</div>
								</div>
							</div>
						</xsl:if>
						<xsl:if test="count(/NewsDetail/NewsImages)>0">
							<div class="col-md-10 col-lg-8">
								<div class="swiper-container project-gallery-thumbs">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Small">
										</xsl:apply-templates>
									</div>
								</div>
							</div>
						</xsl:if>
						<div class="col-12 project-info">
							<div class="table-responsive-1">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent">
								</xsl:value-of>
							</div>
						</div>
					</div>
					<xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
						<div class="row other-project">
							<div class="col-12">
								<h3 class="small-title">
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/OtherProject"></xsl:value-of>
								</h3>
							</div>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</xsl:if>

				</div>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="NewsImages" mode="Big">
		<div class="swiper-slide">
			<a class="img">
				<xsl:attribute name="data-bg">
					<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
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
	</xsl:template>
	<xsl:template match="NewsImages" mode="Small">
		<div class="swiper-slide">
			<a class="img">
				<xsl:attribute name="data-bg">
					<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
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
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="col-lg-4 col-md-6">
			<div class="project-item">
				<article>
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
					</div>
				</article>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<section class="career-detail-section">
			<div class="container">
				<div class="row career-detail">
					<div class="col-lg-8">
						<div class="content">
							<h2 class="title-h1-grey">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/ZoneTitle">
								</xsl:value-of>
							</h2>
							<p class="mota">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<div class="full-content">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent">
								</xsl:value-of>
							</div><a class="main-button">
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/ApplyJobText"></xsl:value-of>
							</a>
						</div>
						<div class="form-apply">
							<iframe>
								<xsl:attribute name="src">
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/ApplyUrl">
									</xsl:value-of>
								</xsl:attribute>
							</iframe>
						</div>
					</div>
					<div class="col-lg-1"></div>
					<div class="col-lg-3">
						<xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
							<div class="other-news">
								<h2 class="big-title">
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/OtherJobText"></xsl:value-of>
								</h2>
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>

						</xsl:if>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">

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
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/EditLink"></xsl:value-of>
				</a>
			</h3><span>
				<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
			</span>
		</div>

	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<section class="product-nav">
			<div class="product-list1-nav bg1" id="bg" setbackground="">
				<div class="container product-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone[IsActive='true']" mode="Zone1"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="row">
			<div class="title-h1-grey">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</div>
			<div class="row box-top">
				<div class="col-lg-5">
					<div class="content">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</p>
					</div>
				</div>
				<div class="col-lg-7">
					<nav class="row no-gutters">
						<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
					</nav>
					<h2 class="small-title">Categories</h2>
					<div class="select">
						<select data-nav="">
							<xsl:apply-templates select="Zone" mode="Select"></xsl:apply-templates>
						</select>
					</div>

				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<a id="bg">
			<xsl:attribute name="data-image">
				<xsl:value-of select="SecondImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</a>
	</xsl:template>
	<xsl:template match="Zone" mode="Select">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</option>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="nav pd-60">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1 class="title-h1-grey"><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h1>
							<p><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/SubTitle"></xsl:value-of></p>
						</div>
					</div>
				</div>
			</div>
			<div class="safety-1 pb-60">
				<div class="container">
					<div class="row">
						<div class="col-12 pb-60">
                            <xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
						</div>
						<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="NewsImages">
        <div class="imgbox">
            <img>
            <xsl:attribute name="src">
                <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            </img>
        </div>
    </xsl:template>
</xsl:stylesheet>
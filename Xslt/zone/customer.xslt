<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
    <div class="nav-pn">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h1 class="title-h1-grey"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Title"></xsl:value-of></h1>
                <p><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Description"></xsl:value-of></p>
            </div>
            <div class="col-lg-6">
                <nav class="row no-gutters tab-navigation">
                    <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                </nav>
            </div>
        </div>
    </div>
</div>
    </xsl:template>
    <xsl:template match="Zone">
        <a>
            <xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
            <xsl:attribute name="data-tab">
					<xsl:text>tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>

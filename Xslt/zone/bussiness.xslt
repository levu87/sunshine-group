<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <!-- <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template> -->
    <xsl:template match="/">
        <div class="nav-1 pd-60">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1 class="title-h1-grey"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Title"></xsl:value-of></h1>
							<p><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Description"></xsl:value-of></p>
						</div>
					</div>
				</div>
			</div>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="nav business-field-section ">
			<div class="container">
				<div class="row">

					<h2 class='sub-title-field'>
						<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/SubTitle"></xsl:value-of>
						<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>

				</div>
			</div>
		</div>
		<div class="safety-1 business-field-section-content  pb-60">
			<div class="container">
				<div class="fullcontent">
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
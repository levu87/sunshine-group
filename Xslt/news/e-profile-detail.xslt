<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="news-detail-section">
				<div class="container">
					<div class="row news-detail">
						<div class="col-12">
							<div class="content">
                                            <!-- <span class="type-1">
                                               <xsl:choose>
						<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
							<div class="promotion op1">
								<span class="status uk-position-top-right">
									Internal News
								</span>
							</div>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
							<div class="promotion op2">
								<span class="status uk-position-top-right">
									News
								</span>
							</div>
						</xsl:when>
					</xsl:choose>
                                            </span>
                                       -->
                                
								<h1 class="big-title e-profile-title"><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h1>
								<div class="full-content">
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
								</div>
								<div class="social-share">
                                <a class="fb" href="https://www.facebook.com/sharer/sharer.php?u=example.org" target="_blank"><em class="mdi mdi-facebook"></em>
                                <span>Share on Facebook</span>
                                </a>
                                <a class="mail" href="#"><em class="mdi mdi-email"></em></a></div>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
</xsl:stylesheet>
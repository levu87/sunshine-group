<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="news-detail-section">
				<div class="container">
					<div class="row news-detail">
						<div class="col-lg-8">
							<div class="content">
								<time><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate"></xsl:value-of></time>
                                
                                <span class="type-1">
                                Internal News
                                </span>
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
                                
								<h1 class="big-title"><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h1>
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
						<div class="col-lg"></div>
						<div class="col-lg-3">
                            <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">

                                <div class="other-news">
								<h2 class="big-title">Latest news</h2>
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
            <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
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
        
    </xsl:template>
</xsl:stylesheet>
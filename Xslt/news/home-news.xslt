<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-news">
				<div class="container"> 
					<h1 class="title-h1-white" data-aos="fade-down"
     data-aos-easing="linear"
     data-aos-duration="1500"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
					<div class="news-wrapper"> 
						<div class="news-slider" data-aos="fade-up"
     data-aos-easing="linear"
     data-aos-duration="1500"> 
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
									
								</div>
							</div>
							<div class="swiper-navigation">
								<div class="news-button-prev"><em class="mdi mdi-chevron-left"></em></div>
								<div class="news-button-next"><em class="mdi mdi-chevron-right"></em></div>
							</div>
							<div class="swiper-pagination"></div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide"> 
            <figure> 
                <div class="img"><a>
                
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
               </img></a></div>
                <figcaption>
                    <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time><a class="news-title">
                    
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    	</a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="product-by-category">
				<div class="container product-by-category-wrapper">
					<ul>
                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</ul>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="title-caption"><span class="title"> <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></span>
            
            
            <a>
           
            
            <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">View all</xsl:text>
            </a></div>

            <div class="row product-wrapper active">
                <xsl:apply-templates select="Product"></xsl:apply-templates>
            </div>
        </li>
    </xsl:template>
    <xsl:template match="Product">
    <xsl:if test="position()&gt;0 and position()&lt;6">
        <div class="product-item-category">
            <div class="figure-image">
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
                </img></a>
            </div>
            <figcaption>
                <div class="top-caption">
                    <h2>
                    <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
                    </a>
                    </h2>
                    <h3> 
                        <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </h3>
                </div>
            </figcaption>
        </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
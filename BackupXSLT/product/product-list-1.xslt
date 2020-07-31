<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="product-list1 product-zone ajaxresponse product-page clearfix">
				<div class="heading">
					<div class="container">
						<div class="order-by sort clearfix"> <span>Sort </span>
							<div class="custom-select sort-amount sort-by">
								<select class="ajaxsort"> 
									<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="list-by-cate">
					<div class="title">
						<div class="container">
							<p>Grill</p>
						</div>
					</div>
					<div class="container">
						<div class="row contain ajaxresponsewrap">
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-sm-6 col-lg-3">
            <div class="figure-product">
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
                    </img>
                    </a>
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
                        <h3> <a>
                        
                        
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a></h3>
                    </div>
                </figcaption>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="SortBy">
        <option>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="selected">
                <xsl:text>selected</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="value">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </option>
    </xsl:template>
</xsl:stylesheet>
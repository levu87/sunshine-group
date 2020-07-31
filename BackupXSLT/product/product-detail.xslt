<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-information-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<div class="information-swiper-wrapper">
							<div class="swiper-product-top">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Top">
										</xsl:apply-templates>
									</div>
								</div>
							</div>
							<div class="swiper-product-thumb">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbs">
										</xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="product-information-wrapper">
							<div class="info">
								<p class="title">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title">
									</xsl:value-of>
								</p><strong class="code">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Code">
									</xsl:value-of>
								</strong>

								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent">
								</xsl:value-of>
							</div>
							<div class="button-wrapper">
								<div class="button">
									<div class="contact-button"><a>

											<xsl:attribute name="href">
												<xsl:text disable-output-escaping="yes">/contact</xsl:text>
											</xsl:attribute>

											<xsl:text disable-output-escaping="yes">Contact</xsl:text>
										</a></div>
									<div class="buy-button"><a>
								
									<xsl:attribute name="href">
										<xsl:value-of select="SubTitle"></xsl:value-of>
									</xsl:attribute>
									<xsl:text disable-output-escaping="yes">Buy</xsl:text>
								
									</a>
									</div>
								</div>
								<div class="social-network-wrapper">
									<p>Share</p>
									<div class="social-button">
										<a>
											<xsl:attribute name="href">
												<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
											</xsl:attribute>

											<em class="fab fa-facebook-f"></em>
										</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="product-tab-wrapper">
				<div class="tab-navigation-wrapper">
					<div class="container">
						<ul>
							<li class="active"><a href="javascript:void(0)" data-type="tab-1">Product information</a>
							</li>
							<li><a href="javascript:void(0)" data-type="tab-2">Download Document</a></li>
							<li><a href="javascript:void(0)" data-type="tab-3">Product Family</a></li>
							<li><a href="javascript:void(0)" data-type="tab-4">Accessories</a></li>
							<li><a href="javascript:void(0)" data-type="tab-5">Gallery</a></li>
						</ul>
					</div>
				</div>
				<div class="container">
					<div class="tab-wrapper">
						<div class="tab-item active" id="tab-1">

							<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="mode-1">
							</xsl:apply-templates>


						</div>
						<div class="tab-item" id="tab-2">
							<div class="download-file">

								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent">
								</xsl:value-of>

							</div>
						</div>
						<div class="tab-item" id="tab-3">
							<div class="product-family">
								<div class="row product-wrapper">
									<xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="tab-item" id="tab-4">
							<div class="access">
								<div class="list-item">
									<xsl:apply-templates select="/ProductDetail/ProductRelated2"></xsl:apply-templates>


								</div>
							</div>
						</div>
						<div class="tab-item" id="tab-5">
							<div class="gallery">
								<div class="row">
									<xsl:apply-templates select="/ProductDetail/NewsRelated"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
				<div class="others-project">
					<div class="white-title-bg-grey">
						<div class="container">
							<p>Similar product</p>
						</div>
					</div>
					<div class="container">
						<div class="row contain">
							<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>


						</div>
					</div>
				</div>
			</xsl:if>
		</section>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="mode-1">
		<!-- <tr>
											<td><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></td>
											<td><xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of></td>
										</tr> -->
		<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
	</xsl:template>
	<xsl:template match="NewsRelated">
		<div class="col-sm-6 col-lg-3">
			<div class="figure-lightgallery">
				<div class="figure-image lightgallery">
					<a data-fancybox="image">
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
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
					<p class="title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</p>
				</figcaption>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductRelated2">
		<div class="item">
			<figure>
				<div class="img">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<a>
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
	<xsl:template match="ProductRelated">
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
					</img>
				</a>
			</div>
			<figcaption>
				<div class="top-caption">
					<h2> <a>
							<xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
						</a></h2>
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
			</figcaption>
		</div>
	</xsl:template>
	<xsl:template match="ProductOther">
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

								<xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
							</a>
						</h2>
						<h3> <a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a></h3>
					</div>
					<!-- <div class="bottom-caption">
                        <div class="price">
                            <h4>5.500.000 đ</h4>
                            <h5>
                                <s>6.500.000 đ</s>
                            </h5>
                        </div>
                        <div class="cart"><a><em class="mdi mdi-heart-outline"></em></a><a><em class="mdi mdi-cart"></em></a></div>
                    </div> -->
				</figcaption>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="Top">
		<div class="swiper-slide">
			<div class="wrapper">
				<a class="swiper-image" data-fancybox="image">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
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
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="Thumbs">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-image">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
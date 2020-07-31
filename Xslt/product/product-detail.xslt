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
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes">
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

											<xsl:value-of disable-output-escaping="yes"
												select="/ProductDetail/ContactText"></xsl:value-of>
										</a></div>
									<div class="buy-button"><a>

											<xsl:attribute name="target">
												<xsl:text>_blank</xsl:text>
											</xsl:attribute>


											<xsl:attribute name="href">
												<xsl:value-of disable-output-escaping="yes"
													select="/ProductDetail/SubTitle">
												</xsl:value-of>
											</xsl:attribute>


											<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BuyText">
											</xsl:value-of>

										</a>
									</div>
								</div>
								<div class="social-network-wrapper">
									<p>
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ShareText">
										</xsl:value-of>
									</p>
									<div class="social-button">
										<a>
											<xsl:attribute name="target">
												<xsl:text>_blank</xsl:text>
											</xsl:attribute>
											<xsl:attribute name="href">
												<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
												<xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
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
							<li class="active"><a href="javascript:void(0)" data-type="tab-1">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/SpecsText">
									</xsl:value-of>
								</a>
							</li>
							<li><a href="javascript:void(0)" data-type="tab-2">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/DownloadText">
									</xsl:value-of>
								</a></li>
							<xsl:if test="count(/ProductDetail/ProductRelated)>0">
								<li><a href="javascript:void(0)" data-type="tab-3">
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/PFamilyText">
										</xsl:value-of>
									</a></li>
							</xsl:if>
							<xsl:if test="count(/ProductDetail/ProductRelated2)>0">
								<li><a href="javascript:void(0)" data-type="tab-4">
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/AccesText">
										</xsl:value-of>
									</a></li>
							</xsl:if>
							<xsl:if test="count(/ProductDetail/NewsRelated)>0">
								<li><a href="javascript:void(0)" data-type="tab-5">
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/GalleryText">
										</xsl:value-of>
									</a></li>
							</xsl:if>
						</ul>
					</div>
				</div>
				<div class="container">
					<div class="tab-wrapper">
						<div class="tab-item active" id="tab-1">

							<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="mode-1">
							</xsl:apply-templates>


						</div>
						<xsl:apply-templates select='/ProductDetail/ProductAttributes' mode='Content'>
						</xsl:apply-templates>

						<xsl:if test="count(/ProductDetail/ProductRelated)>0">
							<div class="tab-item" id="tab-3">
								<div class="product-family">
									<div class="row product-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductRelated">
										</xsl:apply-templates>
									</div>
								</div>
							</div>
						</xsl:if>
						<xsl:if test="count(/ProductDetail/ProductRelated2)>0">
							<div class="tab-item" id="tab-4">
								<div class="access">
									<div class="list-item">
										<xsl:apply-templates select="/ProductDetail/ProductRelated2">
										</xsl:apply-templates>


									</div>
								</div>
							</div>
						</xsl:if>
						<xsl:if test="count(/ProductDetail/NewsRelated)>0">
							<div class="tab-item" id="tab-5">
								<div class="gallery">
									<div class="container">
										<div class="row">
											<xsl:apply-templates select="/ProductDetail/NewsRelated">
											</xsl:apply-templates>
										</div>
									</div>
								</div>
							</div>
						</xsl:if>
					</div>
				</div>
			</div>
			<xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
				<div class="others-project">
					<div class="white-title-bg-grey">
						<div class="container">
							<p>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/PSimilartext">
								</xsl:value-of>
							</p>
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
		<xsl:if test="position()=1">


			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</xsl:if>
	</xsl:template>

	<xsl:template match='ProductAttributes' mode='Content'>
		<xsl:if test='position() &gt; 1 and position() &lt; 3'>
			<div class="tab-item" id="tab-2">
				<div class="download-file">
					<xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="NewsRelated">
		<div class="col-sm-6 col-lg-3">
			<div class="figure-lightgallery">
				<div class="figure-image lightgallery">
					<a>
						<xsl:attribute name="data-fancybox">
							<xsl:text>gallery-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
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
				<div class="hidden" style='display:none;'>
					<xsl:apply-templates select="NewsImages">
						<xsl:with-param select="position()" name="NewsPosition" />
					</xsl:apply-templates>
				</div>
				<figcaption>
					<p class="title">
						<a>

							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
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

	<xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
		<xsl:if test="position()>1">
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:text>gallery-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="Title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
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
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
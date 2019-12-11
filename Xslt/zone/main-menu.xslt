<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="navigation-wrapper">
            <ul>
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </ul>
        </div>
    </xsl:template>
       <xsl:template match="Zone">
    <li>
      <xsl:choose>
        <xsl:when test="count(Zone)>0">
          <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>has-sub active</xsl:text>
            </xsl:attribute>
          </xsl:if>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="count(Zone) > 0">
          <div class="dropdown">
            <em class="mdi mdi-chevron-down"></em>
          </div>
        </xsl:if>
      <a>
        <xsl:if test="count(Zone)>0">
          <xsl:attribute name="class">
            <xsl:text>dropdown-toggle</xsl:text>
          </xsl:attribute>
          <xsl:attribute name="data-toggle">
            <xsl:text>dropdown</xsl:text>
          </xsl:attribute>
          <xsl:attribute name="role">
            <xsl:text>button</xsl:text>
          </xsl:attribute>
          <xsl:attribute name="aria-expanded">
            <xsl:text>false</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="target">
          <xsl:value-of select="Target"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        <xsl:text> </xsl:text>
        <xsl:if test="count(Zone) > 0">
          
            <i class="mdi mdi-chevron-down"></i>
          
          
        </xsl:if>
      </a>
      <xsl:if test="count(Zone) > 0">
        <ul class="nav-sub">
          <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
        </ul>
      </xsl:if>
    </li>
  </xsl:template>
  <xsl:template match="Zone" mode="Child">
    <li>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a>
        <xsl:choose>
				<xsl:when test="SecondImageUrl != ''">
					<xsl:attribute name="href">
						<xsl:value-of select="SecondImageUrl"></xsl:value-of>
					</xsl:attribute>
				
					<xsl:attribute name="target">
					<xsl:text>_blank</xsl:text>
					</xsl:attribute>

					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>

						<xsl:if test="IsActive='true'">
							<xsl:attribute name="class">
								<xsl:text>active</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:otherwise>
			</xsl:choose>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>
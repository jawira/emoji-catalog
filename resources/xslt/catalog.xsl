<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text" version="2.0" encoding="UTF-8" indent="no"/>
  <xsl:include href="./resources/xslt/common.xsl"/>

  <xsl:template match="/">
    <xsl:for-each select="//table//tr[./td//img]">
      <xsl:text>| </xsl:text>
      <xsl:call-template name="get-name"/>
      <xsl:text>    </xsl:text>
      <xsl:text>| </xsl:text>
      <xsl:call-template name="get-emoji"/>
      <xsl:text>    </xsl:text>
      <xsl:text>| </xsl:text>
      <xsl:call-template name="get-code"/>
      <xsl:text>    </xsl:text>
      <xsl:text>| </xsl:text>
      <xsl:call-template name="get-constant-name"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="get-code">
    <xsl:value-of select="./td[2]//a/text()"/>
  </xsl:template>

  <xsl:template name="get-name">
    <xsl:variable name="short-name" select="./td[last()]/text()"/>
    <xsl:variable name="removable" select="'⊛⊖'"/>
    <xsl:variable name="cleaned" select="translate($short-name, $removable, '')"/>
    <xsl:value-of select="normalize-space($cleaned)"/>
  </xsl:template>

  <xsl:template name="get-emoji">
    <xsl:value-of select="./td[3]/text()"/>
  </xsl:template>

  <xsl:template name="get-constant-name">
    <xsl:variable name="short-name" select="./td[last()]/text()"/>
    <xsl:variable name="removable" select="':;.,⊛’!“”()⊖'"/>
    <xsl:variable name="cleaned" select="translate($short-name, $removable, '')"/>
    <xsl:variable name="lowercase" select="'Åãabcçdeéfghíijklmnñoôpqrstuvwxyz-&amp;'"/>
    <xsl:variable name="uppercase" select="'AAABCCDEEFGHIIJKLMNNOOPQRSTUVWXYZ N'"/>
    <xsl:variable name="no-accents" select="translate($cleaned, $lowercase, $uppercase)"/>
    <xsl:variable name="normalized" select="normalize-space($no-accents)"/>
    <xsl:variable name="no-spaces" select="translate($normalized, ' ', '_')"/>

    <xsl:variable name="no-1st">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$no-spaces"/>
        <xsl:with-param name="replace" select="'1ST'"/>
        <xsl:with-param name="by" select="'FIRST'"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="no-2nd">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$no-1st"/>
        <xsl:with-param name="replace" select="'2ND'"/>
        <xsl:with-param name="by" select="'SECOND'"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="no-3rd">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$no-2nd"/>
        <xsl:with-param name="replace" select="'3RD'"/>
        <xsl:with-param name="by" select="'THIRD'"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="no-number">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$no-3rd"/>
        <xsl:with-param name="replace" select="'#'"/>
        <xsl:with-param name="by" select="'NUMBER'"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="no-asterisk">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$no-number"/>
        <xsl:with-param name="replace" select="'*'"/>
        <xsl:with-param name="by" select="'ASTERISK'"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:value-of select="$no-asterisk"/>

  </xsl:template>


  <!-- http://geekswithblogs.net/Erik/archive/2008/04/01/120915.aspx -->
  <xsl:template name="string-replace-all">
    <xsl:param name="text"/>
    <xsl:param name="replace"/>
    <xsl:param name="by"/>
    <xsl:choose>
      <xsl:when test="contains($text, $replace)">
        <xsl:value-of select="substring-before($text,$replace)"/>
        <xsl:value-of select="$by"/>
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="substring-after($text,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="by" select="$by"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

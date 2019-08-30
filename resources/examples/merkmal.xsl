<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:variable name="end" select="14"/>
    <xsl:variable name="increment" select="1"/>

    <xsl:template match="/">
        <table>
            <xsl:for-each select="//record">
                <tr>
                    <xsl:variable name="start" select="1"/>
                    <xsl:call-template name="loop">
                        <xsl:with-param name="counter" select="$start"/>
                    </xsl:call-template>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template name="loop">
        <xsl:param name="counter"/>
        <xsl:if test="$counter &lt;= $end">
            <td>
                <xsl:value-of select="Merkmale/Product/Merkmal[@ColNo=$counter]/@Farbe"/>
            </td>
            <xsl:call-template name="loop">
                <xsl:with-param name="counter" select="$counter + $increment"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>

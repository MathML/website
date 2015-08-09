<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:s="http://www.w3.org/2000/svg" version="1.0">

  <xsl:output method="xml"/>

  <!-- Remove the defs element (containing inline style). -->
  <xsl:template match="s:defs"></xsl:template>

  <!-- By default, just copy the nodes. -->
  <xsl:template match="@*|node()">
    <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
  </xsl:template>

</xsl:stylesheet>

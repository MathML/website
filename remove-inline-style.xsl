<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:s="http://www.w3.org/2000/svg" version="1.0">

  <!-- This Source Code Form is subject to the terms of the Mozilla Public
     - License, v. 2.0. If a copy of the MPL was not distributed with this
     - file, You can obtain one at http://mozilla.org/MPL/2.0/. -->

  <xsl:output method="xml"/>

  <!-- Remove the defs element (containing inline style). -->
  <xsl:template match="s:defs"></xsl:template>

  <!-- By default, just copy the nodes. -->
  <xsl:template match="@*|node()">
    <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
  </xsl:template>

</xsl:stylesheet>

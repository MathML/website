<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:s="http://www.w3.org/2000/svg" version="1.0">

  <!-- This Source Code Form is subject to the terms of the Mozilla Public
     - License, v. 2.0. If a copy of the MPL was not distributed with this
     - file, You can obtain one at http://mozilla.org/MPL/2.0/. -->

  <xsl:output method="xml" cdata-section-elements="s:style s:metadata"/>
  <xsl:strip-space elements="s:*" />

  <!-- Insert a defs element with inline style. -->
  <xsl:template match="s:svg">
    <xsl:element name="svg" namespace="http://www.w3.org/2000/svg">
      <xsl:apply-templates select="@*"/>
      <defs>
        <style type="text/css">
          /* Some SVG tools (e.g. Inkscape) do not seem to support
             xml-stylesheet or Web fonts. Hence we just use inline style and
             system fonts. */
          text.mathFont {
            font-family: 'Latin Modern Math', serif;
          }
          text.textFont {
            font-family: 'TeX Gyre Heros', sans-serif;
          }
        </style>
      </defs>
      <xsl:apply-templates select="node()"/>
    </xsl:element>
  </xsl:template>

  <!-- Remove the xml-stylesheet processing instruction and comments. -->
  <xsl:template match="processing-instruction()|comment()"></xsl:template>

  <!-- By default, just copy the nodes. -->
  <xsl:template match="@*|node()">
    <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
  </xsl:template>

</xsl:stylesheet>

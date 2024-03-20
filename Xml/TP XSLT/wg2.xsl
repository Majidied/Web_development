<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <title>Présentation HTML de wg.xml</title>
    </head>
    <body>
      <h1>Groupe de travail, <xsl:value-of select="gdt/@month"/> <xsl:value-of select="gdt/@year"/></h1>

      <xsl:apply-templates/>

    </body>
  </html>
</xsl:template>

<xsl:template match="expose">
<h2>Le <xsl:value-of select="@day"/> <xsl:value-of select="..//@month"/> :</h2>
<xsl:apply-templates select="speaker|title"/>
</xsl:template>

<xsl:template match="speaker">
<p>Présentation de <xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="title">
<h3>Titre:</h3>
	<p><xsl:value-of select="."/></p>
</xsl:template>

</xsl:stylesheet>

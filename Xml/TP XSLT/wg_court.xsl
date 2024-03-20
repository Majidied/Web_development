<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <title>Présentation HTML de wg.xml</title>
    </head>
    <body>
      <h1>Groupe de travail, <xsl:value-of select="gdt/@month"/> <xsl:value-of select="gdt/@year"/></h1>
      <h2>Le <xsl:value-of select="gdt/expose/@day"/> <xsl:value-of select="gdt/@month"/> :</h2>
      <p>Présentation de <xsl:value-of select="gdt/expose/speaker"/></p>
      <h3>Titre:</h3>
      <p><xsl:value-of select="gdt/expose/title"/></p>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>

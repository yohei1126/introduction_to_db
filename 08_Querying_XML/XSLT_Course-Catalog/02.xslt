<!-- Q2 Return a list of department elements with no attributes and two subelements each:
the department title and the entire Chair subelement structure. -->
<xsl:stylesheet 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="xs">

<xsl:template match="Department">
  <Department>
    <xsl:copy-of select="Title"/>
    <xsl:copy-of select="Chair"/>
  </Department>
</xsl:template>
    
</xsl:stylesheet>

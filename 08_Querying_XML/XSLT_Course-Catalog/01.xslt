<!-- Q1. Return a list of department titles.  -->
<xsl:stylesheet 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="xs">
<xsl:template match="Department">
    <Title><xsl:value-of select="Title"/></Title>
</xsl:template>
</xsl:stylesheet>

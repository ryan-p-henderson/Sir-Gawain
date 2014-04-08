<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:xhtml="http://www.idpf.org/2007/opf">
    <xsl:output method="xml" indent='yes'/>
    <xsl:template match='span[@class="bw"]'>
        <bw>
        <xsl:apply-templates/>
        </bw>
    </xsl:template>
</xsl:stylesheet>
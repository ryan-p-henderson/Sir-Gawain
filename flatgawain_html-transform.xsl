<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method='xhtml' indent="yes"/>
    <xsl:template match='/'>
        <html>
            <head><title>Sir Gawain and the Green Knight</title></head>
            <body>
                <h1>Sir Gawain and the Green Knight</h1>
                <h2>Text</h2>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match='head'>
        <h3><xsl:apply-templates/></h3>
    </xsl:template>
    <xsl:template match='lg'>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
</xsl:stylesheet>
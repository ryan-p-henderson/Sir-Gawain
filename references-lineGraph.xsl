<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xmlns="http://www.w3.org/2000/svg">
    <xsl:output method='xhtml' indent='yes'/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="Canto" select="position() - 1"/>
    <xsl:variable name="xCanto" select="$Canto + 100"></xsl:variable>
    <xsl:template match='/'>
        <html>
            <head><title>Gawain's Ghost</title>
            <script type='text/javascript' src=''>//</script>
            </head>
            <body>
                <p>Click to show appearances of references for each Canto: Chivalry; Christian; 
                Folklore; Nature; Pagan; Mythological</p>
            </body>
        </html>
        <xsl:apply-templates select='//ref'/>
        <svg>
            <g transform='translate(10,110)'>
                <line x1='0' y1='0' x2='400' y2='0' stroke='black' stroke-width='2'/>
                <line x1='0' y1='0' x2='0' y2='-350' stroke='black' stroke-width='2'/>
                <text x='100' y='5'>Canto 1</text>
                <text x='200' y='5'>Canto 2</text>
                <text x='300' y='5'>Canto 3</text>
                <text x='400' y='5'>Canto 4</text>
                <text x='-5' y='50'>5</text>
                <text x='200' y='15'>Cantos</text>
                <text x='-15' y='175' text-anchor='middle' rotate='(-90 )'>References</text>
                <xsl:apply-templates select='//text'/>
            </g>
        </svg>
    </xsl:template>
    <xsl:template match="div">
        <xsl:variable name="ChivRefs" select='count(//ref[@type="chivalry"])'/>
        <xsl:variable name="ChristianRefs" select="count(//ref[@religion='Christianity'])"/>
        <xsl:variable name="FolkloreRefs" select="count(//ref[@type='folklore'])"/>
        <xsl:variable name="NatureRefs" select="count(//ref[@type='nature'])"/>
        <xsl:variable name="PaganRefs" select="count(//ref[@type='pagan'])"/>
        <xsl:variable name="MythologicalRefs" select="count(//ref[@type='mythological'])"/>        
        <circle cx='{$xCanto}' cy='{$ChivRefs}' r='5' fill='green'/>
        <circle cx='{$xCanto}' cy='{$ChristianRefs}' r='5' fill='blue'/>
        <circle cx='{$xCanto}' cy='{$FolkloreRefs}' r='5' fill='red'/>
        <circle cx='{$xCanto}' cy='{$NatureRefs}' r='5' fill='orange'/>
        <circle cx='{$xCanto}' cy='{$PaganRefs}' r='5' fill='black'/>
        <circle cx='{$xCanto}' cy='{$MythologicalRefs}' r='5' fill='purple'/> 
        <line x1='{$xCanto}' y1='{$ChivRefs}' x2='{$xCanto + 100}' y2
        <line x1='{$xCanto}' 
        <line x1='{$xCanto}' 
        <line x1='{$xCanto}' 
        <line x1='{$xCanto}' 
        <line x1='{$xCanto}' 
    </xsl:template>
    <xsl:template match="ref">
        
    </xsl:template>
</xsl:stylesheet>
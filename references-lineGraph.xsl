<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="xSpacing" select="100"/>
    <xsl:variable name="ySpacing" select="15"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Gawain's Ghost</title>
                <script type="text/javascript" src="">//</script>
            </head>
            <body>
                <p>Click to show appearances of references for each Canto: Chivalry; Christian;
                    Folklore; Nature; Pagan; Mythological</p>
                <div>
                    <svg:svg height="550px" width="500px">
                        <svg:g transform="translate(10,500)">
                            <svg:line x1="0" y1="0" x2="400" y2="0" stroke="black" stroke-width="2"/>
                            <svg:line x1="0" y1="0" x2="0" y2="-350" stroke="black" stroke-width="2"/>
                            <svg:text x="100" y="5">Canto 1</svg:text>
                            <svg:text x="200" y="5">Canto 2</svg:text>
                            <svg:text x="300" y="5">Canto 3</svg:text>
                            <svg:text x="400" y="5">Canto 4</svg:text>
                            <svg:text x="-5" y="50">5</svg:text>
                            <svg:text x="200" y="15">Cantos</svg:text>
                            <xsl:apply-templates select="//div"/>
                        </svg:g>
                    </svg:svg>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="div">
        <!-- each <div> is a canto; there are four in all -->
        <xsl:variable name="ChivRefs" select='count(.//ref[@type="chivalry"])'/>
        <xsl:variable name="ChristianRefs" select="count(.//ref[@religion='Christianity'])"/>
        <xsl:variable name="FolkloreRefs" select="count(.//ref[@type='folklore'])"/>
        <xsl:variable name="NatureRefs" select="count(.//ref[@type='nature'])"/>
        <xsl:variable name="PaganRefs" select="count(.//ref[@type='pagan'])"/>
        <xsl:variable name="MythologicalRefs" select="count(.//ref[@type='mythological'])"/>
        <xsl:variable name="currentX" select="position() * $xSpacing"/>
        <svg:circle cx="{$currentX}" cy="-{$ChivRefs * $ySpacing}" r="5" fill="green" class="chiv"/>
        <svg:circle cx="{$currentX}" cy="-{$ChristianRefs * $ySpacing}" r="5" fill="blue"/>
        <svg:circle cx="{$currentX}" cy="-{$FolkloreRefs * $ySpacing}" r="5" fill="red"/>
        <svg:circle cx="{$currentX}" cy="-{$NatureRefs * $ySpacing}" r="5" fill="orange"/>
        <svg:circle cx="{$currentX}" cy="-{$PaganRefs * $ySpacing}" r="5" fill="black"/>
        <svg:circle cx="{$currentX}" cy="-{$MythologicalRefs * $ySpacing}" r="5" fill="purple"/>
        <xsl:if test="preceding-sibling::div">
            <xsl:variable name="precedingDiv" select="preceding-sibling::div[1]"/>
            <xsl:variable name="precedingChivRefs"
                select='count($precedingDiv//ref[@type="chivalry"])'/>
            <xsl:variable name="precedingChristianRefs"
                select="count($precedingDiv//ref[@religion='Christianity'])"/>
            <xsl:variable name="precedingFolkloreRefs"
                select="count($precedingDiv//ref[@type='folklore'])"/>
            <xsl:variable name="precedingNatureRefs"
                select="count($precedingDiv//ref[@type='nature'])"/>
            <xsl:variable name="precedingPaganRefs"
                select="count($precedingDiv//ref[@type='pagan'])"/>
            <xsl:variable name="precedingMythologicalRefs"
                select="count($precedingDiv//ref[@type='mythological'])"/>
            <xsl:variable name="precedingX" select="(position() - 1) * $xSpacing"/>
            <svg:line x1="{$precedingX}" y1="-{$precedingChivRefs * $ySpacing}" x2="{$currentX}"
                y2="-{$ChivRefs * $ySpacing}" stroke="green" stroke-width="1" class="chiv"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="ref"> </xsl:template>
</xsl:stylesheet>

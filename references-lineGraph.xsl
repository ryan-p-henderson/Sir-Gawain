<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xmlns:svg="http://www.w3.org/2000/svg"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method='xhtml' indent='yes'/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="xSpacing" select='100'/>
    <xsl:variable name="ySpacing" select="15"/>
    <xsl:variable name="LineShift" select='-40'/>
    <xsl:template match='/'>
        <html>
            <head>
                <title>Gawain's Ghost</title>
                <script type="text/javascript" src="">//</script>
            </head>
            <body>
                <p>Click to show appearances of references for each Canto: <span class='trigger'>Chivalry</span>; <span class='trigger'>Christian</span>; 
                    <span class='trigger'>Folklore</span>; <span class='triger'>Nature</span>; <span class='triger'>Pagan</span>; <span class='triger'>Mythological</span>            
                </p>
        <svg:svg height='800' width='800'>
            <svg:g transform='translate(10,550)'>
                <svg:line x1='50' y1='0' x2='400' y2='0' stroke='black' stroke-width='2'/>
                <svg:line x1='50' y1='0' x2='50' y2='-500' stroke='black' stroke-width='2'/>
                <svg:text x='60' y='20' text-anchor='middle'>Canto 1</svg:text>
                <svg:text x='160' y='20' text-anchor='middle'>Canto 2</svg:text>
                <svg:text x='260' y='20' text-anchor='middle'>Canto 3</svg:text>
                <svg:text x='360' y='20' text-anchor='middle'>Canto 4</svg:text>
                <svg:text x='185' y='40'>Cantos</svg:text>
                <svg:text x='-15' y='-175' text-anchor='middle' rotate='(-90 )'>References</svg:text>
                <xsl:apply-templates select='//div'/>
            </svg:g>
        </svg:svg>
            </body>
        </html>
            </xsl:template>
         <xsl:template match='div'>
        <xsl:variable name="ChivRefs" select='count(.//ref[@type="chivalry"])'/>
        <xsl:variable name="ChristianRefs" select="count(.//ref[@religion='Christianity'])"/>
        <xsl:variable name="FolkloreRefs" select="count(.//ref[@type='folklore'])"/>
        <xsl:variable name="NatureRefs" select="count(.//ref[@type='nature'])"/>
        <xsl:variable name="PaganRefs" select="count(.//ref[@type='pagan'])"/>
        <xsl:variable name="MythologicalRefs" select="count(.//ref[@type='mythological'])"/>  
        <xsl:variable name="currentX" select="position() * $xSpacing"/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$ChivRefs * $ySpacing}' r='5' fill='green' class='Chivalry'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$ChristianRefs* $ySpacing}' r='5' fill='blue' class='Christian'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$FolkloreRefs* $ySpacing}' r='5' fill='red' class='Folklore'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$NatureRefs* $ySpacing}' r='5' fill='orange' class='Nature'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$PaganRefs* $ySpacing}' r='5' fill='black' class='Pagan'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$MythologicalRefs* $ySpacing}' r='5' fill='purple' class='Mythological'/> 
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
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingChivRefs * $ySpacing}" x2="{$currentX + $LineShift}"
                y2="-{$ChivRefs * $ySpacing}" stroke="green" stroke-width="1" class="Chivalry"/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingChristianRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$ChristianRefs * $ySpacing}"
                stroke='blue' stroke-width='1' class='Christian'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingFolkloreRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$FolkloreRefs * $ySpacing}"
                stroke='red' stroke-width='1' class='Folklore'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingNatureRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$NatureRefs * $ySpacing}" 
                stroke='orange' stroke-width='1' class='Nature'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingPaganRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$PaganRefs * $ySpacing}"
                stroke='black' stroke-width='1' class='Pagan'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingMythologicalRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$MythologicalRefs * $ySpacing}"
                stroke='purple' stroke-width='1' class='Mythological'/>
           </xsl:if>
    </xsl:template>
</xsl:stylesheet>


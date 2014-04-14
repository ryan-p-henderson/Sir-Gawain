<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
<<<<<<< HEAD
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
=======
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="xSpacing" select="100"/>
    <xsl:variable name="ySpacing" select="15"/>
    <xsl:template match="/">
>>>>>>> b7cd2efa73aa0ce42e6e15e892e3e52471e52bb0
        <html>
            <head>
                <title>Gawain's Ghost</title>
                <script type="text/javascript" src="">//</script>
            </head>
            <body>
<<<<<<< HEAD
                <p>Click to show appearances of references for each Canto: Chivalry; Christian; 
                Folklore; Nature; Pagan; Mythological            
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
=======
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
>>>>>>> b7cd2efa73aa0ce42e6e15e892e3e52471e52bb0
            </body>
        </html>
    </xsl:template>
    <xsl:template match="div">
<<<<<<< HEAD
=======
        <!-- each <div> is a canto; there are four in all -->
>>>>>>> b7cd2efa73aa0ce42e6e15e892e3e52471e52bb0
        <xsl:variable name="ChivRefs" select='count(.//ref[@type="chivalry"])'/>
        <xsl:variable name="ChristianRefs" select="count(.//ref[@religion='Christianity'])"/>
        <xsl:variable name="FolkloreRefs" select="count(.//ref[@type='folklore'])"/>
        <xsl:variable name="NatureRefs" select="count(.//ref[@type='nature'])"/>
        <xsl:variable name="PaganRefs" select="count(.//ref[@type='pagan'])"/>
<<<<<<< HEAD
        <xsl:variable name="MythologicalRefs" select="count(.//ref[@type='mythological'])"/>  
        <xsl:variable name="currentX" select="position() * $xSpacing"/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$ChivRefs * $ySpacing}' r='5' fill='green' class='ChivCircle'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$ChristianRefs* $ySpacing}' r='5' fill='blue' class='ChristianCircle'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$FolkloreRefs* $ySpacing}' r='5' fill='red' class='FolkloreCircle'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$NatureRefs* $ySpacing}' r='5' fill='orange' class='NatureCircle'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$PaganRefs* $ySpacing}' r='5' fill='black' class='PaganCircle'/>
        <svg:circle cx='{(position() * $xSpacing) + $LineShift}' cy='-{$MythologicalRefs* $ySpacing}' r='5' fill='purple' class='MythCircle'/> 
=======
        <xsl:variable name="MythologicalRefs" select="count(.//ref[@type='mythological'])"/>
        <xsl:variable name="currentX" select="position() * $xSpacing"/>
        <svg:circle cx="{$currentX}" cy="-{$ChivRefs * $ySpacing}" r="5" fill="green" class="chiv"/>
        <svg:circle cx="{$currentX}" cy="-{$ChristianRefs * $ySpacing}" r="5" fill="blue"/>
        <svg:circle cx="{$currentX}" cy="-{$FolkloreRefs * $ySpacing}" r="5" fill="red"/>
        <svg:circle cx="{$currentX}" cy="-{$NatureRefs * $ySpacing}" r="5" fill="orange"/>
        <svg:circle cx="{$currentX}" cy="-{$PaganRefs * $ySpacing}" r="5" fill="black"/>
        <svg:circle cx="{$currentX}" cy="-{$MythologicalRefs * $ySpacing}" r="5" fill="purple"/>
>>>>>>> b7cd2efa73aa0ce42e6e15e892e3e52471e52bb0
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
<<<<<<< HEAD
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingChivRefs * $ySpacing}" x2="{$currentX + $LineShift}"
                y2="-{$ChivRefs * $ySpacing}" stroke="green" stroke-width="1" class="chiv"/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingChristianRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$ChristianRefs * $ySpacing}"
                stroke='blue' stroke-width='1' class='christian'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingFolkloreRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$FolkloreRefs * $ySpacing}"
                stroke='red' stroke-width='1' class='folklore'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingNatureRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$NatureRefs * $ySpacing}" 
                stroke='orange' stroke-width='1' class='nature'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingPaganRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$PaganRefs * $ySpacing}"
                stroke='black' stroke-width='1' class='pagan'/>
            <svg:line x1="{$precedingX + $LineShift}" y1="-{$precedingMythologicalRefs * $ySpacing}" x2="{$currentX + $LineShift}" y2="-{$MythologicalRefs * $ySpacing}"
                stroke='purple' stroke-width='1' class='mythological'/>
            
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
=======
            <svg:line x1="{$precedingX}" y1="-{$precedingChivRefs * $ySpacing}" x2="{$currentX}"
                y2="-{$ChivRefs * $ySpacing}" stroke="green" stroke-width="1" class="chiv"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="ref"> </xsl:template>
</xsl:stylesheet>
>>>>>>> b7cd2efa73aa0ce42e6e15e892e3e52471e52bb0

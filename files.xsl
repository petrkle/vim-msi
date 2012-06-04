<?xml version="1.0" ?> 
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:wix="http://schemas.microsoft.com/wix/2006/wi"> 

<xsl:output omit-xml-declaration="yes" indent="yes" encoding="utf-8"/>
<xsl:strip-space  elements="*"/>

<xsl:template match="/">
	<Include>
		<xsl:apply-templates />	
	</Include>
</xsl:template>

<xsl:template match="wix:Directory[1]">
	<xsl:copy-of select="."/>
</xsl:template>

<xsl:template match="wix:Include/Directory/Component[@Id='gvim.exe']"/>

</xsl:stylesheet> 

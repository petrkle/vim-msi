<?xml version="1.0" ?> 
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:wix="http://schemas.microsoft.com/wix/2006/wi"> 

<xsl:output omit-xml-declaration="yes" indent="yes" encoding="utf-8"/>
<xsl:strip-space  elements="*"/>


<xsl:template match="@*|*">
		<xsl:copy>
				<xsl:apply-templates select="@*" />
				<xsl:apply-templates select="*" />
		</xsl:copy>
		
</xsl:template>

<xsl:output method="xml" indent="yes" />

<xsl:template match="wix:Component[@Id='vim.exe']">
	<xsl:copy-of select="."/>
		<Component Id="cmpADDTOPATH" Guid="0ad8a43b-54b1-4214-95ae-52b5d842b938" xmlns="http://schemas.microsoft.com/wix/2006/wi">
			<CreateFolder />
			<Environment Id="PATH" Name="PATH" Value="[vim]vim80" Permanent="no" Part="last" Action="set" System="yes" />
		</Component>
</xsl:template>


</xsl:stylesheet>

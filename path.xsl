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
		<Component Id="cmpADDTOPATH" Guid="A5659D5C-5429-4D67-B5E1-AF938BC2A860" xmlns="http://schemas.microsoft.com/wix/2006/wi">
			<CreateFolder />
			<Environment Id="PATH" Name="PATH" Value="[vim]" Permanent="no" Part="last" Action="set" System="yes" />
		</Component>
</xsl:template>


</xsl:stylesheet>

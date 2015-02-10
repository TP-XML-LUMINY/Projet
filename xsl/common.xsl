<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- COMMON -->
	<xsl:template match="paragraphe">
		<p><xsl:apply-templates/></p>
	</xsl:template>
	<xsl:template match="menu/lien"><a href="{@link}" class="{@class}"><xsl:value-of select="."></xsl:value-of></a></xsl:template>
	<xsl:template match="b"><b><xsl:value-of select="."></xsl:value-of></b></xsl:template>
	<xsl:template match="i"><i><xsl:value-of select="."></xsl:value-of></i></xsl:template>
	<xsl:template match="tt"><tt><xsl:value-of select="."></xsl:value-of></tt></xsl:template>
	<xsl:template match="u"><u><xsl:value-of select="."></xsl:value-of></u></xsl:template>
	<xsl:template match="liste">
		<xsl:apply-templates select="paragraphe"/>
		<xsl:choose>
			<xsl:when test="@type='ol'">
				<ol>
					<xsl:apply-templates select="el"/>
				</ol>
			</xsl:when>
			<xsl:otherwise>
				<ul>
					<xsl:apply-templates select="el"/>
				</ul>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="el">
		<li><xsl:apply-templates/></li>
	</xsl:template>
	
	<!-- MENU -->
	<xsl:template match="menu">
		<div id='leftFrame'>
			<div id='menu'>
				<xsl:apply-templates/>
			</div>
		</div>
	</xsl:template>
	<xsl:include href="./common/table.xsl"/>
</xsl:stylesheet>
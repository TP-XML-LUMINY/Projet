<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="table">
		<table>
			<xsl:if test="caption">
				<caption><xsl:value-of select="caption"/></caption>
			</xsl:if>
			<xsl:apply-templates select="tr"/>
		</table>
	</xsl:template>
	<xsl:template match="tr">
		<xsl:element name="tr">
			<xsl:attribute name="rowspan"><xsl:value-of select="@rowspan"/></xsl:attribute>
			<xsl:attribute name="colspan"><xsl:value-of select="@colspan"/></xsl:attribute>
			<xsl:if test="class"><xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute></xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="th">
		<xsl:element name="th">
			<xsl:attribute name="rowspan"><xsl:value-of select="@rowspan"/></xsl:attribute>
			<xsl:attribute name="colspan"><xsl:value-of select="@colspan"/></xsl:attribute>
			<xsl:if test="class"><xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute></xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="td">
		<xsl:element name="td">
			<xsl:attribute name="rowspan"><xsl:value-of select="@rowspan"/></xsl:attribute>
			<xsl:attribute name="colspan"><xsl:value-of select="@colspan"/></xsl:attribute>
			<xsl:if test="class"><xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute></xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
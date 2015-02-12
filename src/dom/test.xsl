<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<html>
	<head><title>test transformation</title></head>
	<body>
		<xsl:apply-templates/>
	</body>
	</html>
	</xsl:template>
	
	
	<xsl:template match="liste_unites">
	<ul><xsl:apply-templates/></ul>
	</xsl:template>
	
	<xsl:template match="unite">
	<li><xsl:value-of select="."/></li>
	</xsl:template>
</xsl:stylesheet>
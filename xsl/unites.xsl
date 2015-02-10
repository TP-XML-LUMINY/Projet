<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
				<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="paquet_unites">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				<title>Les unités d'enseignements</title>
				<link rel="stylesheet" type="text/css" href="../style/style.css" media="screen" />
			</head>
		
			<body>
				<div id="header">
      				<a href="http://sciences.univ-amu.fr" class="header-univmed"></a><a href="index.php" class="header-masterinfo"></a><a href="http://www.univ-amu.fr" class="header-univprov"></a>
    			</div>
				<xsl:apply-templates select="document('menu.xml',/)"/>
				<div id="content">
					<h1 id="les-unites">Les unités d'enseignements</h1>
					<h2 id="liste-par-code">Les unités triées par code</h2>
					<blockquote>
						<p>
							<xsl:for-each select="child::unite">
								<xsl:sort select="@id"/>
								<xsl:variable name="identifiant"/>
								<a href="../xml/unites/{@id}.xml" shape="rect"><xsl:value-of select="@id"/></a><xsl:if test="following-sibling::unite">, </xsl:if>
							</xsl:for-each>
						</p>
					</blockquote>
					<h2 id="liste">Les unités de Master</h2>
						<center>
							<table summary="">
								<tr>
									<th rowspan="1" colspan="1">Code</th>
									<th rowspan="1" colspan="1">Nom</th>
								</tr>
								<xsl:for-each select="unite">
									<xsl:sort select="nom"/>
									<tr>
										<td rowspan="1" colspan="1"><xsl:value-of select="@id"/></td>
										<td rowspan="1" colspan="1"><a href="../xml/unites/{@id}.xml" shape="rect"><xsl:value-of select="nom"/></a></td>
									</tr>
								</xsl:for-each>
							</table>
						</center>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="menu">
		<div id='leftFrame'>
			<div id='menu'>
				<xsl:apply-templates/>
			</div>
		</div>
	</xsl:template>
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
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="intervenants">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				<title>Les intervenants du Master Informatique</title>
				<link rel="stylesheet" type="text/css" href="../style/style.css" media="screen" />
			</head>
			<body>
				<div id="header">
					<a href="http://sciences.univ-amu.fr" class="header-univmed"></a><a href="../index.php" class= "header-masterinfo"></a><a href="http://www.univ-amu.fr" class="header-univprov"></a>
				</div>
				<xsl:apply-templates select="document('../xml/menu.xml')"/>
				<div id="content">
					<h1 id="titre">Les intervenants du Master Informatique</h1>
					<h2 id="liste">Une première liste</h2>
					<center>
						<table summary="">
							<tr>
								<th rowspan="1" colspan="1">Nom</th>
								<th rowspan="1" colspan="1">Téléphone</th>
								<th rowspan="1" colspan="1">&#160;Courriel&#160;</th>
								<th rowspan="1" colspan="1">&#160;Web&#160;</th>
							</tr>
	          				<xsl:for-each select="document('Repertoire.xml',/)/*/enseignant">
								<xsl:sort select="nom"/>
								<tr>
									<td rowspan="1" colspan="1"><a href="../xml/intervenants/{@id}.xml" shape="rect"><xsl:value-of select="nom"/>&#160;<xsl:value-of select="prenom"/></a></td>
									<td rowspan="1" colspan="1"><xsl:if test="telephone">&#160;<a href="tel:{telephone}" shape="rect"><xsl:value-of select="telephone"/></a>&#160;</xsl:if></td>
									<xsl:if test="mail">
										<td class="center" rowspan="1" colspan="1">&#160;<a href="mailto:{mail}" shape="rect"><img style="border: 0px;" alt="Mail" src="../img/icon_email.gif" /></a>&#160;</td>
									</xsl:if>
									<xsl:if test="not(mail)">
										<td></td>
									</xsl:if>
									<xsl:if test="site_web">
										<td class="center" rowspan="1" colspan="1">&#160;<a href="{site_web}" shape="rect"><img style="border: 0px;" alt="Web" src="../img/icon_www.gif" /></a>&#160;</td>
									</xsl:if>
									<xsl:if test="not(site_web)">
										<td></td>
									</xsl:if>
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
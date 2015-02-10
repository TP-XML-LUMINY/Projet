<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="contacts">
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
					<h1 id="titre">Les responsables du<br clear="none" />Master Informatique</h1>
					<center>
						<xsl:for-each select="document('Repertoire.xml',/)/*/enseignant[responsable]">
							<table summary="">
								<col width="350px" span="1" />
								<col width="100px" span="1" />
								<col width="100px" span="1" />
								<col width="100px" span="1" />
							<tr>
								 <th rowspan="1" colspan="1"><a href= "intervenants/{@id}.xml" shape="rect"><xsl:value-of select="prenom"/>&#160;<xsl:value-of select="nom"/></a></th>
								 <th rowspan="1" colspan="1"></th>
								 <xsl:if test="mail">
								 	<th class="center" rowspan="1" colspan="1">&#160;<a href="mailto:{mail}" shape="rect"><img style="border: 0px;" alt="Mail" src="../img/icon_email.gif" /></a>&#160;</th>
								 </xsl:if>
								 <xsl:if test="not(mail)">
								 	<th class="center" rowspan="1" colspan="1"></th>
								 </xsl:if>
								 <th class="center" rowspan="1" colspan="1"></th>
							</tr>
							<xsl:if test="lieu">
								<tr>
									<td align="left" colspan="4" rowspan="1"><xsl:value-of select="lieu"/></td>
								</tr>
							</xsl:if>
							<tr>
								<td align="left" colspan="4" rowspan="1">
									<b>Responsabilité</b>&#160;:<xsl:apply-templates select="responsable"/>
								</td>
							</tr>
							</table>
						</xsl:for-each>
					</center>
				</div>
			
			</body>
		</html>
	</xsl:template>
	<xsl:template match="responsable">
		<br clear="none" />&#160;&#160;&#160;- <a href="{@href}.xml" shape="rect"><xsl:value-of select="."/></a>
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
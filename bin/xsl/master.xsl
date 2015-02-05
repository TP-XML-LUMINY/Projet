<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>


	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="master">
		<html>
			<head>
  				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
  				<xsl:choose>
  					<xsl:when test="parcours[@annee='M1']">
  						<title>&#160;Première année de tronc commun</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='FSI']">
  						<title>&#160;Fiabilité et sécurité informatique (FSI)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='ISL']">
  						<title>&#160;Intégration de systèmes logiciels (ISL)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='GL']">
  						<title>&#160;Génie logiciel (GL)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='ID']">
  						<title>&#160;Informatique décisionnelle (ID)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='FED']">
  						<title>&#160;Fouille et entrepôts de données (FED)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='RO']">
  						<title>&#160;Recherche opérationnelle (RO)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='IF']">
  						<title>&#160;Informatique fondamentale (IF)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='RIM']">
  						<title>&#160;Recherche d'informations multimédia (RIM)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='SIR']">
  						<title>&#160;Systèmes d'informations répartis (SIR)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='SIS']">
  						<title>&#160;Sciences de l'Information et des systèmes (SIS)</title>
  					</xsl:when>
  					<xsl:when test="parcours[@annee='INF']">
  						<title>&#160;Informatique (INF)</title>
  					</xsl:when>
  				</xsl:choose>
  				<link rel="stylesheet" type="text/css" href="../style/style.css" media="screen"/>
			</head>
			<body>
				<div id="header">
      				<a href="http://sciences.univ-amu.fr" class="header-univmed"></a><a href="index.php" class="header-masterinfo"></a><a href="http://www.univ-amu.fr" class="header-univprov"></a>
    			</div>
				<xsl:apply-templates select="menu"/>
				<xsl:choose>
					<xsl:when test="parcours"><xsl:apply-templates select="parcours"/></xsl:when>
					<xsl:otherwise><xsl:apply-templates select="presentation"/></xsl:otherwise>
				</xsl:choose>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="parcours">
				<div id="content">
					<xsl:choose>
	  					<xsl:when test="@annee='M1'">
							<h1 id="idhtex-h1-1">Première année de tronc commun</h1>
						</xsl:when>
	  					<xsl:when test="@annee='FSIL'">
							<h1 id="idhtex-h1-1">Fiabilité, sécurité et intégration logicielle (FSIL)</h1>
							<center><b>Une spécialité à finalité professionnelle<br clear="none" />du master Informatique de Marseille.</b></center>
						</xsl:when>
	  					<xsl:when test="@annee='FSI'">
							<h1 id="idhtex-h1-1">Fiabilité et sécurité informatique (FSI)</h1>
							<center><b>Un parcours à finalité professionnelle de la spécialité<br clear="none" /><a href="FSIL.xml" shape="rect">Fiabilité, sécurité et intégration logicielle</a></b></center>
						</xsl:when>
						<xsl:when test="@annee='ISL'">
							<h1 id="idhtex-h1-1">Intégration de systèmes logiciels (ISL)</h1>
							<center><b>Un parcours à finalité professionnelle de la spécialité<br clear="none" /><a href="FSIL.xml" shape="rect">Fiabilité, sécurité et intégration logicielle</a></b></center>
						</xsl:when>
						<xsl:when test="@annee='GL'">
							<h1 id="idhtex-h1-1">Génie logiciel (GL)</h1>
							<center><b>Une spécialité à finalité professionnelle<br clear="none"/>du master Informatique de Marseille.</b></center>
						</xsl:when>
						<xsl:when test="@annee='ID'">
							<h1 id="idhtex-h1-1">Informatique décisionnelle (ID)</h1>
							<center><b>Une spécialité à finalité professionnelle<br clear="none"/>du master Informatique de Marseille.</b></center>
						</xsl:when>
						<xsl:when test="@annee='FED'">
							<h1 id="idhtex-h1-1">Fouille et entrepôts de données (FED)</h1>
							<center><b>Un parcours à finalité professionnelle de la spécialité<br clear="none"/><a href="ID.xml" shape="rect">Informatique décisionnelle</a></b></center>
						</xsl:when>
						<xsl:when test="@annee='RO'">
							<h1 id="idhtex-h1-1">Recherche opérationnelle (RO)</h1>
							<center><b>Un parcours à finalité professionnelle de la spécialité<br clear="none"/><a href="ID.xml" shape="rect">Informatique décisionnelle</a></b></center>
						</xsl:when>
						<xsl:when test="@annee='IF'">
							<h1 id="idhtex-h1-1">Informatique fondamentale (IF)</h1>
							<center><b>Une spécialité à finalité recherche<br clear="none"/>du Master Informatique de Marseille</b></center>
						</xsl:when>
						<xsl:when test="@annee='RIM'">
							<h1 id="idhtex-h1-1">Recherche d'informations multimédia (RIM)</h1>
							<center><b>Une spécialité à finalité professionnelle<br clear="none"/>du Master Informatique de Marseille</b></center>
						</xsl:when>
						<xsl:when test="@annee='SIR'">
							<h1 id="idhtex-h1-1">Systèmes d'informations répartis (SIR)</h1>
							<center><b>Une spécialité à finalité professionnelle<br clear="none"/>du Master Informatique de Marseille</b></center>
						</xsl:when>
						<xsl:when test="@annee='SIS'">
							<h1 id="idhtex-h1-1">Sciences de l'Information et des systèmes (SIS)</h1>
							<center><b>Une spécialité à finalité recherche<br clear="none"/>du Master Informatique de Marseille</b></center>
						</xsl:when>
						<xsl:when test="@annee='INF'">
							<h1 id="idhtex-h1-1">Informatique (INF)</h1>
							<center><b>Un parcours à finalité recherche de la spécialité<br clear="none"/><a href="SIS.xml" shape="rect">Sciences de l'information et des systèmes</a></b></center>
						</xsl:when>
					</xsl:choose>
					<xsl:apply-templates/>
				</div>
	</xsl:template>
	
	<xsl:include href="./common.xsl"/>
</xsl:stylesheet>
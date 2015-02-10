<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="iso-8859-1" indent="yes" media-type="html" />


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
				<xsl:apply-templates select="document('menu.xml',/)"/>
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
	<!-- PRESENTATION -->
	<xsl:template match="presentation">
		<h2 id="idhtex-h2-1">Présentation et objectifs</h2>
		<xsl:variable name="ref" select="refprof/@id"/>
		<p><b>Responsable<xsl:if test="refprof[2]">s</xsl:if></b>&#160;: <ul><xsl:apply-templates select="document('../xml/Repertoire.xml')/*/enseignant[@id=$ref]"/></ul></p>
		<xsl:if test="child::lieu">
			<p><b>Lieu<xsl:if test="lieu/campus[2]">x</xsl:if> d'enseignement</b>&#160;: <xsl:apply-templates select="lieu/campus"/></p>
		</xsl:if>
		<xsl:apply-templates select="description"/>
	</xsl:template>
	<xsl:template match="description">
		<p><b>Description</b>&#160;: <xsl:apply-templates/></p>
	</xsl:template>
	<xsl:template match="enseignant">
		<li><a href="../xml/intervenants/{@id}.xml"><xsl:value-of select="prenom"/>&#160;<xsl:value-of select="nom"/></a></li>
	</xsl:template>
	<xsl:template match="campus">
		<xsl:if test="preceding-sibling::campus and following-sibling::campus">, </xsl:if><xsl:if test="preceding-sibling::campus and not(following-sibling::campus)"> et </xsl:if>Campus de <xsl:value-of select="."/><xsl:if test="not(following-sibling::campus)">.</xsl:if>
	</xsl:template>
	
	<!-- COMPETENCES -->
	<xsl:template match="competences">
		 <h2 id="idhtex-h2-2">Compétences à acquérir</h2>
		 <xsl:apply-templates/>
	</xsl:template>
	
	<!-- CONNAISSANCES -->
	<xsl:template match="connaissances">
		<h2 id="idhtex-h2-3">Connaissances à acquérir</h2>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- PROGRAMME -->
	<xsl:template match="programme">
		<xsl:if test="not(preceding-sibling::programme)"><h2 id="idhtex-h2-3">Programme des enseignements</h2></xsl:if>
		<p><b>Programme du semestre&#160;S<xsl:value-of select="@semestre"/> </b>&#160;:</p>
		<ul>
			<xsl:apply-templates/>
		</ul>
	</xsl:template>
	<xsl:template match="paquet_unites">
		<li><xsl:if test="nom"><xsl:value-of select="nom"/></xsl:if>
			<ul>
				<xsl:apply-templates select="refunite|unite"/>
			</ul>
		</li>
	</xsl:template>
	<xsl:template match="refunite">
		<xsl:variable name="ref" select="@id"/>
		<xsl:apply-templates select="document('../xml/Unites.xml')/*/unite[@id=$ref]"/>
	</xsl:template>
	
	<xsl:template match="unite">
		<xsl:variable name="code" select="@id"/>
		<li><a href="{concat('unites/', concat(./@id, '.xml'))}" shape="rect"><xsl:value-of select="nom"/> (<xsl:value-of select="credit"/> crédits)</a></li>
	</xsl:template>
	
	<!-- POLITIQUE DES STAGES -->
	<xsl:template match="politique_des_stages">
		     <h2 id="idhtex-h2-4">Politique des stages</h2>
		     <xsl:apply-templates/>
	</xsl:template>
	
	<!-- ASPECTS FORMATION -->
	<xsl:template match="aspects_formation">
		<h2 id="idhtex-h2-5">Aspects formation et recherche</h2>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- MODALITES PEDAGOGIQUES -->
	<xsl:template match="modalites_pedagogiques">
		 <h2 id="idhtex-h2-6">Modalités pédagogiques</h2>
		 <xsl:apply-templates/>
	</xsl:template>
	
	<!-- ENSEIGNEMENT DELOCALISES -->
	<xsl:template match="enseignements_delocalises">
		<h2 id="idhtex-h2-6">Enseignements délocalisés</h2>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- CONDITIONS D'ADMISSION ET PRE-REQUIS -->
	<xsl:template match="conditions_admission">
		<h2 id="idhtex-h2-7">Conditions d'admission et pré-requis</h2>
		<xsl:apply-templates select="pre_requis"/>
		 <xsl:if test="paragraphe"><p><b>Admission :</b></p>
		 <xsl:apply-templates select="paragraphe"/></xsl:if>
		<p style="margin-left:30px; padding-left: 10px; border-left: 4px solid red;"><b><a href="{lien/@link}" shape="rect"><xsl:value-of select="lien"></xsl:value-of></a></b></p>
	</xsl:template>
	<xsl:template match="pre_requis">
		<p><b>Pré-requis <xsl:value-of select="@type" /> :</b></p>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- DEBOUCHES -->
	<xsl:template match="debouches">
		<h2 id="idhtex-h2-7">Débouchés</h2>
		<xsl:apply-templates />
	</xsl:template>
	
	<!-- POURSUITES D'ETUDES -->
	<xsl:template match="poursuites">
		<h2 id="idhtex-h2-8">Poursuites d'études</h2>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:include href="./common.xsl"/>
</xsl:stylesheet>
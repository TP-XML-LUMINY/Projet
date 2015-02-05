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
	
	<!-- PRESENTATION -->
	<xsl:template match="presentation">
		<h2 id="idhtex-h2-1">Présentation et objectifs</h2>
		<xsl:variable name="ref" select="refprof/@id"/>
		<p><b>Responsable<xsl:if test="refprof[2]">s</xsl:if></b>&#160;: <ul><xsl:apply-templates select="document('../xml/Contacts.xml')/*/enseignant[@id=$ref]"/></ul></p>
		<xsl:if test="child::lieu">
			<p><b>Lieu<xsl:if test="lieu/campus[2]">x</xsl:if> d'enseignement</b>&#160;: <xsl:apply-templates select="lieu/campus"/></p>
		</xsl:if>
		<xsl:apply-templates select="description"/>
	</xsl:template>
	<xsl:template match="description">
		<p><b>Description</b>&#160;: <xsl:apply-templates/></p>
	</xsl:template>
	<xsl:template match="enseignant">
		<li><xsl:value-of select="prenom"/>&#160;<xsl:value-of select="nom"/></li>
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
	
	<!-- ENSEIGNANTS -->
	<xsl:template match="intervenants"></xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="index">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				<title>Master Informatique de Marseille</title>
				<link rel='stylesheet' type='text/css' href='../style/style.css' media='screen' />
			</head>
			<body>
				<div id="header">
      				<a href="http://sciences.univ-amu.fr" class="header-univmed"></a><a href="index.php" class="header-masterinfo"></a><a href="http://www.univ-amu.fr" class="header-univprov"></a>
    			</div>
				<xsl:apply-templates select="document('menu.xml',/)"/>
				<div id='content'>
				<h1 id='idhtex-h1-1'>Master Informatique de Marseille</h1><center><b>habilitation 2012 / 2018</b></center>
				<center>
					<p><b><a href='http://dii.univ-mrs.fr' shape='rect'>Département Informatique et Interactions</a><br clear='none' /><a href='http://sciences.univ-amu.fr'>Faculté des Sciences</a></b></p>
					<p><b><a href='http://www.univ-amu.fr' shape='rect'>Aix-Marseille Université</a><br clear='none' /></b></p>
				</center>
				<fieldset class='float-right clear-right' style='width:200px;'><legend>Sur cette page</legend> -&#160;<a href='#masterinfo' shape='rect'>Présentation</a><br clear='none' />-&#160;<a href='#parcours' shape='rect'>Liste des parcours</a><br clear='none' />-&#160;<a href='#debouches' shape='rect'>Débouchés et effectifs</a><br clear='none' /></fieldset>
				<fieldset class='float-right clear-right' style='width:200px;'><legend>Pages voisines</legend> -&#160;<a href='http://www.lif.univ-mrs.fr' shape='rect'>Le site du LIF</a><br clear='none' />-&#160;<a href='http://www.lsis.org/' shape='rect'>Le site du LSIS</a><br clear='none' />-&#160;<a href='plaquettes/' shape='rect'>Plaquettes</a><br clear='none' /></fieldset>
				<fieldset class='float-right clear-right' style='width:200px;'><legend>Anciennes maquettes</legend> <a href='ancienne.php' shape='rect'>La version <b>2008/2011</b> est ici</a>.<br clear='none' /><a href='ancienne.php' shape='rect'>La version<b>2004/2007</b> est ici</a>.</fieldset>
				<xsl:apply-templates/>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="presentation">
		<div class='h2' id='masterinfo'> Présentation du Master «&#160;Informatique&#160;»</div>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="specialite">
		<div class='h2' id='parcours'>Spécialités et options</div>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="debouches">
		<div class='h2' id='debouches'>Débouchés et effectifs</div>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="descLMD">
		<div class='h2' id='intro.lmd'>Descriptif rapide du système L.M.D.</div>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="br">
		<br clear="{@clear}" />
	</xsl:template>
	
	<xsl:include href="./common.xsl"/>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<!--*****************************************************
Nom:Aitor
Cognom:Martínez 
***********************************************************  -->
<html>
<head>
    <meta charset = "utf-8"/>
    <link rel = "stylesheet" href = "../css/estilo.css" />
    <title > Listado de receta </title >
    
</head>

<body class="body">
<hr/>

<center><b><a href="../index.html">INICIO</a> SOBRE MÍ <a class="cabecera" href = "xml/catalog.xml"> RECETAS</a><a class="cabecera" href = "../contacto/contacto.html" > CONTACTO </a > OTRAS COSAS </b></center>

<hr/>
<xsl:for-each select="lista_recetas/receta">
<section>

<div style="float: left;width: 25%">
<xsl:element name="img">
    <xsl:attribute name="src">
        <xsl:value-of select="imatge/@ruta"/> 
    </xsl:attribute>
    <xsl:attribute name="height">
        200px
    </xsl:attribute>
    <xsl:attribute name="width">
        300px
    </xsl:attribute>
</xsl:element>
<a href="../receta/receta.html"><h4><xsl:value-of select="titol"/></h4></a>
<p class="cabecera">
<xsl:value-of select="cocinero"/><br/>
<xsl:value-of select="plato"/><br/>
<xsl:value-of select="dificultad"/><br/>
<xsl:value-of select="vegano"/>
</p>
</div>

</section>
</xsl:for-each>
<div style="clear: both;"/>
<footer style = "background-color: black;">
<hr/>
<pre>
<center >
<b class="white">Facebook 	Twitter 	Instagram 	Pinterest   	Email 	  RSS</b>
</center>
</pre >
<hr/>
</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
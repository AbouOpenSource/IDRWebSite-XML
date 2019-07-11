<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"/>



 <xsl:template match="/">
 <html>
 	<head>
 	 <meta charset="UTF-8"/>
  <meta name="description" content=""/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
 	<title><xsl:value-of select="page/entete/titre"/></title>			
	<xsl:for-each select="page/entete/lien">
	   <xsl:if test="@type = 'stylesheet'">
	    	<link rel="stylesheet" href="{.}"></link>  
		</xsl:if>
       <xsl:if test="@type = 'icon'">
	    	<link rel="icon" href="{.}"></link>  
		</xsl:if>
     </xsl:for-each>
	

	</head> 	
 	<xsl:apply-templates/>
 </html>





</xsl:template>

  	 <xsl:template match="corps">
  		<body>
		<xsl:apply-templates/>

	</body>
    </xsl:template>


  	 <xsl:template match="tete">
  		<header class="{@classification}"><xsl:apply-templates/></header>
    </xsl:template>

    <xsl:template match="division">
  		<div class="{@classification}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="divisiondelay">
  		<div class="{@classification}" data-wow-delay="{@data-wow-delay}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="divisionstyle">
  		<div class="{@classification}" style="{@style}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="divisionid">
  		<div class="{@classification}" id="{@identification}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="paragraphe">
  		<p data-animation="{@data-animation}" data-delay="{@data-delay}"><xsl:value-of select="."/></p>
    </xsl:template>

	<xsl:template match="adress">  
	  		<a href="{@lien}" data-toggle="tooltip" data-placement="bottom" title="infodeercreative@gmail.com" ><xsl:apply-templates/></a>
	</xsl:template>

	<xsl:template match="emphase">
	  		<span><xsl:value-of select="."/></span>
	</xsl:template>

	<xsl:template match="icon">
		<i class="{@type}" aria-hidden="true"/> 		
	</xsl:template> 
	<xsl:template match="bar">
		<navbar id="{@identification}" class="{@classification}"><xsl:apply-templates/></navbar>		
	</xsl:template> 
<xsl:template match="barriere">
		<nav aria-label="breadcrumb"><xsl:apply-templates/></nav>		
	</xsl:template> 

	<xsl:template match="adresse">
		<a href="{@href}" class="{@classification}" data-animation="{@data-animation}" data-delay="{@data-delay}"><xsl:apply-templates/></a> 		
	</xsl:template>
	<xsl:template match="image">
		<img src="{@src}"/> 		
	</xsl:template> 
	<xsl:template match="lu">
		<ul><xsl:apply-templates/></ul>	
	</xsl:template>
	<xsl:template match="lo">
		<ol class="{@classification}"><xsl:apply-templates/></ol>	
	</xsl:template>
	<xsl:template match="il">
		<li class="{@classification}"><xsl:apply-templates/></li>	
	</xsl:template>
	<xsl:template match="ile">
		<li class="{@classification}" aria-current="{@aria-current}"><xsl:value-of select="."/></li>	
	</xsl:template>
	<xsl:template match="formulaire">
		<form method="{@methode}" action="{@action}"><xsl:apply-templates/></form>	
	</xsl:template>
	<xsl:template match="entree">
		<input type="{@type}" name="{@name}" id="{@id}" placeholder="{@placeholder}" class="{@classification}"/>	
	</xsl:template>
	<xsl:template match="titre2">
		<h2 data-animation="{@data-animation}" data-delay="{@data-delay}"><xsl:value-of select="."/></h2>
	</xsl:template>
	
<xsl:template match="titre5">
		<h5 data-animation="{@data-animation}" data-delay="{@data-delay}"><xsl:value-of select="."/></h5>
	</xsl:template>
	<xsl:template match="titre6">
		<h6 data-animation="{@data-animation}" data-delay="{@data-delay}"><xsl:value-of select="."/></h6>
	</xsl:template>

	<xsl:template match="code">
	<script src="{@src}"></script>
	</xsl:template>
	<xsl:template match="partie">
		<section class="{@classification}"><xsl:apply-templates/></section>
	</xsl:template>

	<xsl:template match="touche">
		<button type="{@type}" class="{@classification}"><xsl:value-of select="."/></button>
	</xsl:template>
	<xsl:template match="entreetext">
		<textarea name="{@name}" class="{@classification}" cols="{@cols}" rows="{@rows}" placeholder="{@placeholder}"></textarea>
	</xsl:template>
	<xsl:template match="add">
		<a data-toggle="{@data-toggle}" data-placement="{@data-placement}" title="{@title}"><xsl:apply-templates/></a>
	</xsl:template>
</xsl:stylesheet>


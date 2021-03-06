<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:portal="http://www.enonic.com/cms/xslt/portal" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xs portal" version="2.0">
	<xsl:output indent="yes" media-type="text/html" method="xhtml" omit-xml-declaration="yes"/>
	<xsl:include href="/features/Datasources/datasource-result.include.xsl"/>
	<xsl:variable name="redirectKey" select="/result/context/querystring/parameter[@name='id']"/>
	<xsl:template match="/">
		<link href="{portal:createResourceUrl('/_public/features/features.css')}" media="screen" rel="stylesheet" type="text/css"/>
		<script src="{portal:createResourceUrl('/_public/features/scripts/contentOperations.js', ())}" type="text/javascript">
			<xsl:comment>//</xsl:comment>
		</script>
		<div id="fullXML" style="display: none">
			<a href="javascript:hidediv('fullXML')">hide xml</a>
			<p>
				<textarea>
					<xsl:copy-of select="/result"/>
				</textarea>
			</p>
		</div>
		<a href="javascript:showdiv('fullXML')">show xml</a>
		<h2>getCategory</h2>
		<p><a href="{concat(portal:createPageUrl($redirectKey, ()),concat('?categoryKey=', 0))}">Sample Packages</a> | <a href="{concat(portal:createPageUrl($redirectKey, ()),concat('?categoryKey=', 26))}">Features</a> |  <a href="{concat(portal:createPageUrl($redirectKey, ()),concat('?categoryKey=', 67))}">Ansatt (no access anonymous)</a>
        </p>
		<ul>
			<xsl:apply-templates select="/result/categories/category"/>
		</ul>
		
		<!--h2>Test Form (POST)</h2>
		<p>
			<form action="{/result/context/querystring/@servletpath}" method="POST">
				<div>
					<input type="text" name="myParameter" value="Hello, World!"/>
					<input type="submit" value="Post"/>
				</div>
			</form>
		</p>
		
		<h2>Querystring Parameters</h2>
		<ul>
			<xsl:apply-templates select="/result/context/querystring/parameter"/>
		</ul-->
	</xsl:template>

	<xsl:template match="category">
		<li><a href="{concat(portal:createPageUrl($redirectKey, ()),concat('?categoryKey=', @key))}"><xsl:value-of select="@name"/></a> ( <xsl:if test="categories/@totalcount &gt; 0"><xsl:value-of select="categories/@totalcount"/> subcategories : </xsl:if>
            <xsl:value-of select="@totalcontentcount"/> contents) <ul><xsl:apply-templates select="categories/category"/></ul>
        </li>
	</xsl:template>
	<xsl:template match="parameter">
		<li>
			<xsl:value-of select="@name"/> : <xsl:value-of select="."/>
		</li>
	</xsl:template>
</xsl:stylesheet>

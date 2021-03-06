<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" 
	xmlns="http://www.w3.org/1999/xhtml" 
	xmlns:util="enonic:utilities" 
	xmlns:portal="http://www.enonic.com/cms/xslt/portal" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	
  <xsl:output doctype-public="-//W3C//DTD XHTML 1.1//EN" doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" encoding="utf-8" indent="yes" method="xhtml" omit-xml-declaration="yes"/>

  <xsl:param name="content">
    <type>region</type>
  </xsl:param>

  <xsl:template match="/">
	<xsl:call-template name="pc"/>
  </xsl:template>

  <xsl:template name="pc">
    <html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
      <head>
        <title>
			Test
        </title>

		<meta charset="UTF-8"/>
		<meta name="robots" content="all"/>
		<meta content="minimum-scale=1, maximum-scale=1, width=device-width, user-scalable=yes" name="viewport"/>
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<meta name="format-detection" content="telephone=yes"/>
		<!--link rel="stylesheet" href="http://code.jquery.com/mobile/1.0b3/jquery.mobile-1.0b3.min.css" type="text/css"/-->
		<script src="http://code.jquery.com/jquery-1.6.2.min.js" type="text/javascript"></script>
		<!--script src="http://code.jquery.com/mobile/latest/jquery.mobile.js" type="text/javascript"></script-->
		<script src="{portal:createResourceUrl('/_public/libraries/jquery/scripts/jquery.mobile.js')}" type="text/javascript"></script>
		<link rel="apple-touch-startup-image" href=""/>
		
		<!--link rel="apple-touch-icon" href="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/bring/apple-touch-icon.png?_ts=131ccbe209f"/>
		<link rel="apple-touch-icon" sizes="57x57" href="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/bring/apple-touch-icon.png?_ts=131ccbe209f"/>
		<link rel="apple-touch-icon" sizes="72x72" href="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/bring/apple-touch-icon-72x72.png?_ts=131ccbf9f62"/>
		<link rel="apple-touch-icon" sizes="114x114" href="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/bring/apple-touch-icon-114x114.png?_ts=131ccc13e76"/>
		<link rel="stylesheet" href="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/load/normalize.css?_ts=13224544bb7" type="text/css"/>
		<link rel="stylesheet" href="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/load/load.css?_ts=13266bca3ee" type="text/css"/>
		<script src="http://halkirk.os.ergo.no:8120/admin/site/1/_public/themes/load/scripts/load-mobile.js?_ts=1325e1c7f9e" type="text/javascript"></script-->
		
      </head>
		<body>
			<div data-role="page">
				<h1>Hello, World!</h1>
				<div>
					<xsl:copy-of select="$content"/>
				</div>
			</div>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>

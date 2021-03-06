<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
   exclude-result-prefixes="xs portal" 
   version="2.0" 
   xmlns="http://www.w3.org/1999/xhtml" 
   xmlns:portal="http://www.enonic.com/cms/xslt/portal" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:output indent="yes" media-type="text/html" method="xhtml" omit-xml-declaration="yes"/>
   
   
   <xsl:include href="/features/Datasources/datasource-result.include.xsl"/>
   
   <xsl:template match="/">      
     
      <form method="post">
         <label for="userstore">userstore (leave blank for default):</label>
         <input type="text" id="userstore" name="userstore" value="{/result/context/querystring/parameter[ @name = 'userstore' ]}"/>
         <br/>
         <br/>
         <input type="submit"/>
      </form>
      <br/>
      <xsl:call-template name="datasource-result"/>
      
   </xsl:template>


</xsl:stylesheet>

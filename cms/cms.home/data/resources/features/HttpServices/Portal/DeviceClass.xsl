<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:portal="http://www.enonic.com/cms/xslt/portal"
                xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs portal" version="2.0">

  <xsl:output indent="yes" media-type="text/html" method="xhtml" omit-xml-declaration="yes"/>

  <xsl:include href="/features/includes/displayContext.xsl"/>


  <xsl:template match="/">

    <link href="{portal:createResourceUrl('/_public/features/features.css')}" media="screen"
          rel="stylesheet" type="text/css"/>


    <xsl:variable name="redirect" select="portal:createPageUrl()"/>

    <p>
      Current device class:
      <xsl:value-of select="/result/context/device-class"/>
    </p>

    <fieldset>

      <legend>Operation: forceDeviceClass</legend>
      <form action="{portal:createServicesUrl('portal','forceDeviceClass', $redirect, ())}" id="form" method="post">

        <label for="lifetime">lifetime</label>
        <select id="lifetime" name="lifetime">
          <option value="permanent">permanent</option>
          <option value="session">session</option>
        </select>
        <br/>

        <label for="deviceclass">deviceclass:</label>
        <input type="text" id="deviceclass" name="deviceclass"/>
        <br/>


        <input type="submit" value="Force device class" class="button clear"/>
      </form>
    </fieldset>

    <fieldset>
      <legend>Operation: resetDeviceClass</legend>
      <form action="{portal:createServicesUrl('portal','resetDeviceClass', ())}" id="form" method="post">
        <input type="submit" value="Reset device class" class="button class"/>
      </form>
    </fieldset>

    <xsl:call-template name="displayContext"/>

  </xsl:template>
</xsl:stylesheet>

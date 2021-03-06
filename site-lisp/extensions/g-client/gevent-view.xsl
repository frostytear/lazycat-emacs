<?xml version="1.0" encoding="utf-8"?>
<!--
Author: T. V. Raman <raman@cs.cornell.edu>
License: GPL
Copyright: This file is part of the g-client package.
View GCal Events
-->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:a="http://www.w3.org/2005/Atom"
                xmlns:gd="http://schemas.google.com/g/2005" >
  <xsl:output method="xml"  indent="yes"/>
  <xsl:include href="gevent.xsl"/>
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="/a:entry/a:title" disable-output-escaping="yes"/></title>
      </head>
      <body>
        <xsl:apply-templates select="a:entry" />
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:foaf="http://xmlns.com/foaf/0.1/" 
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        |<html>
        <body>
            <xsl:value-of select="rdf:RDF/foaf:Person/foaf:name"/>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
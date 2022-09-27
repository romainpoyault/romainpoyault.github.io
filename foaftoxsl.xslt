<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:foaf="http://xmlns.com/foaf/0.1/" 
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        |<html>
        <body>
            <table border="1">
                <tr bgcolor="#9acd32">
                  <th>Title</th>
                  <th>Given name</th>
                  <th>Family name</th>
                  <th>nickname</th>
                  <th>Homepage</th>
                  <th>Image</th>
                  <th>Phone number</th>
                  <th>Workplace Homepage</th>
                  <th>School Homepage</th>
                  <xsl:for-each select="rdf:RDF/foaf:Person/foaf:knows">
                    <th><xsl:value-of select="foaf:Person/foaf:name"/></th>
                </xsl:for-each>
                </tr>
                <tr>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:title"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:givenname"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:family_name"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:nick"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:depiction/@rdf:resource"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:phone/@rdf:resource"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:workplaceHomepage/@rdf:resource"/></td>
                  <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:schoolHomepage/@rdf:resource"/></td>
                  <xsl:for-each select="rdf:RDF/foaf:Person/foaf:knows">
                    <td><xsl:value-of select="foaf:Person/rdfs:seeAlso"/></td>
                 </xsl:for-each>
                </tr>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
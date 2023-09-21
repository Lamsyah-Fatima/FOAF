<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="https://github.com/Lamsyah-Fatima/FOAF/blob/main/myInfos.foaf.rdf"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/"
    xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Mon Profil FOAF</title>
      </head>
      <body>
        <h1>Bonjour c'est lamsyah fatima</h1>
        
        <!-- Données FOAF -->
        <xsl:apply-templates select="//foaf:Person"/>

        <!-- Liens vers d'autres pages (Connaissances) -->
        <h2>Liens vers d'autres pages</h2>
        <ul>
          <li><a href="arthur-louis.github.io/foaf.rdf">Arthur</a></li>
          <li><a href="baptistr.github.io/BoujuExercice1">Baptiste</a></li>
          <!-- Ajoutez d'autres liens vers des pages de connaissances au besoin -->
        </ul>
      </body>
    </html>
  </xsl:template>

  <!-- Extraction des informations FOAF -->
  <xsl:template match="foaf:Person">
    <div>
      <h2>Informations personnelles</h2>
      <p><strong>Nom :</strong> <xsl:value-of select="foaf:name"/></p>
      <p><strong>Email :</strong> <a href="mailto:{foaf:mbox}"><xsl:value-of select="foaf:mbox"/></a></p>
      <!-- Ajoutez d'autres informations FOAF au besoin -->
    </div>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>

 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

        <xsl:output method="html" indent="yes"/> 
        
      <xsl:template match="/">

      
    <html>

      <head>
        <title>Empleados banco</title>
      </head>

      <body>
        <h1>Empleados con sueldo mayor a 2000</h1>

        <ul>

          <xsl:for-each select="empleados/empleado[sueldo &gt; 2000]">
            <li>
              <xsl:value-of select="nombre"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="apellidos"/>
            </li>
          </xsl:for-each>

        </ul>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


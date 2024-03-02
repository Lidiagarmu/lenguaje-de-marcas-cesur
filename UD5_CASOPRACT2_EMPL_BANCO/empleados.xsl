<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
      
    <html>
      <head>
        <title>Empleados banco</title>
      </head>

      <body>
        <h1>Empleados con sueldo mayor a 2000</h1>

        <table border="1">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Nombre</th>
                <th style="text-align:left">Apellidos</th>
                <th style="text-align:left">Sueldo</th>
            </tr>

        <xsl:for-each select="empleados/empleado">
        <xsl:sort select="sueldo"/>
        <xsl:if test="sueldo &gt; 2000">
             <tr>
                <td> <xsl:value-of select="nombre"/> </td>
                <td> <xsl:value-of select="apellidos"/></td>
                <td> <xsl:value-of select="concat(sueldo, ' ', sueldo/@moneda)"/></td>
            </tr>
        </xsl:if>
        </xsl:for-each>

           
        </table>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>

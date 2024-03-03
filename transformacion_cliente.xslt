<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

      
    <!-- Plantilla para mostrar la información de cada cliente en una tabla -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Información de los Clientes</h2>
                <table border="1">
                    <tr bgcolor="#ff4500">
                        <th>Cliente</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Correo</th>
                    </tr>
                    <xsl:for-each select="pedidos/anio/trimestre/pedido">
                        <tr>
                            <td><xsl:value-of select="nombre"/> <xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="telefono"/></td>
                            <td><xsl:value-of select="concat(direccion/calle, ', ', direccion/ciudad, ', ', direccion/codigo_postal, ', ', direccion/provincia)"/></td>
                            <td><xsl:value-of select="correo"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
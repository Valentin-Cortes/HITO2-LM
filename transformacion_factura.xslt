<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Plantilla para generar una factura para un cliente que compra un producto -->
    <xsl:template match="pedido">
        <html>
            <body>
                <h2>Factura</h2>
                <p>Cliente: <xsl:value-of select="nombre"/> <xsl:value-of select="apellidos"/></p>
                <p>Fecha de Compra: <xsl:value-of select="detalles_pedido/fecha_compra"/></p>
                <p>Número de Pedido: <xsl:value-of select="detalles_pedido/numero_pedido"/></p>
                <table border="1">
                    <tr bgcolor="#6495ed">
                        <th>Nombre del Producto</th>
                        <th>Precio</th>
                        <th>Unidades</th>
                    </tr>
                    <xsl:for-each select="detalles_pedido/productos/producto">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="unidades"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <p>Total de la Factura: <xsl:value-of select="detalles_pedido/total_factura"/></p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

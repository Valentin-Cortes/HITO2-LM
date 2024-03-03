<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Plantilla para mostrar la información de cada pedido en una tabla -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Información de los Pedidos</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Cliente</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Correo</th>
                        <th>Fecha de Inclusión</th>
                        <th>Número de Pedido</th>
                        <th>Fecha de Compra</th>
                        <th>Fecha de Entrega</th>
                        <th>Total de la Factura</th>
                    </tr>
                    <xsl:for-each select="pedidos/anio/trimestre/pedido">
                        <tr>
                            <td><xsl:value-of select="nombre"/> <xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="telefono"/></td>
                            <td><xsl:value-of select="concat(direccion/calle, ', ', direccion/ciudad, ', ', direccion/codigo_postal, ', ', direccion/provincia)"/></td>
                            <td><xsl:value-of select="correo"/></td>
                            <td><xsl:value-of select="fecha_inclusion"/></td>
                            <td><xsl:value-of select="detalles_pedido/numero_pedido"/></td>
                            <td><xsl:value-of select="detalles_pedido/fecha_compra"/></td>
                            <td><xsl:value-of select="detalles_pedido/fecha_entrega"/></td>
                            <td><xsl:value-of select="detalles_pedido/total_factura"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
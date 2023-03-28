<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="equipos">
        <html>
            <head>
                <title>Táboa das máquinas</title>
            </head>
            <body>
                <h1>Táboa das máquinas</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Máquina</th>
                            <th>Procesador</th>
                            <th>Memoria</th>
                            <th>Discos(s)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="máquina"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="máquina">
        <tr>
            <td>
                <xsl:value-of select="@nome"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="concat(hardware/procesador/@marca,'-',hardware/procesador/text())"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="concat(hardware/memoria/text(),'GB ',hardware/memoria/@tecnoloxía)"></xsl:value-of>
            </td>
            <td>
                <xsl:apply-templates select="hardware/disco"></xsl:apply-templates>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="disco">
        <p>
            <xsl:value-of select="concat(@capacidade,'GB ',@tecnoloxía)"></xsl:value-of>
        </p>
    </xsl:template>
    
</xsl:stylesheet>

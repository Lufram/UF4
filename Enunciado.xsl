<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <ite nombre="Instituto Tecnológico Edix" web="https://institutotecnologico.edix.com" >

        <profesores> 
            <xsl:for-each select="/ite/profesores/profesor">
                <profesor>
                    <xsl:attribute name="numero_profesor">
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                </profesor>
            </xsl:for-each>
        </profesores>

        <directivo>
            <director>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/director/nombre"/>
                </xsl:attribute>
            </director>
            <jefe_estudios>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/jefe_estudios/nombre"/>
                </xsl:attribute>
            </jefe_estudios>
            <despachos>
                <xsl:for-each select=" ite/director | ite/jefe_estudios">
                    <direccion>
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                        <xsl:value-of select="despacho"/>
                    </direccion>
                </xsl:for-each>
            </despachos>
        </directivo>

        <grados_formativos>
            <xsl:for-each select="/ite/ciclos/ciclo">
                <grados>
                    <xsl:attribute name="abreviatura">
                        <xsl:value-of select="@id"/>
                    </xsl:attribute>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                    <xsl:attribute name="nivel">
                        <xsl:value-of select="grado"/>
                    </xsl:attribute>
                    <xsl:attribute name="año_decreto">
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </xsl:attribute>
                </grados>
            </xsl:for-each>            
        </grados_formativos>

    </ite>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xml:output method="xml" version="1.0" encoding="UTF-8" ident="yes"/>

<xsl:template match="/">
<ite>
    <xsl:attribute name="web">
        <xsl:value-of select="/ite/@web"/>
    </xsl:attribute>
<ciclos>
    <xsl:for-each select="/ite/ciclos/ciclo">
    <ciclo>
        <informacionCiclo>
                <imagen enlace="#"></imagen>
                <nombre><xsl:value-of select="@id"/></nombre>
                <descripcion><xsl:value-of select="nombre"/></descripcion>
                <grado><xsl:value-of select="grado"/></grado>
                <decretoTitulo><xsl:value-of select="decretoTitulo/@año"/></decretoTitulo>
        </informacionCiclo>

        <informacionEmpresa>
            <empresa><xsl:value-of select="/ite/empresa"/></empresa>
            <centro><xsl:value-of select="/ite/@nombre"/></centro>
            <telefono><xsl:value-of select="/ite/telefono"/></telefono>
            <web><xsl:value-of select="/ite/@web"/></web>
        </informacionEmpresa>
    
        <profesores>
            <profesor>
                <xsl:for-each select="/ite/profesores/profesor">
                    <xsl:attribute name="id">
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                    <foto enlace="#"></foto>
                    <asignatura><xsl:value-of select="asignatura"/></asignatura>
                    <informacion><xsl:value-of select="informacion"/></informacion>
                </xsl:for-each>
            </profesor>
        </profesores>
    
        <director>
            <xsl:attribute name="despacho">
                <xsl:value-of select="/ite/director/despacho"/>
            </xsl:attribute>
            <nombre><xsl:value-of select="/ite/director/nombre"/></nombre>
        </director>
    
        <jefe_estudios>
            <xsl:attribute name="despacho">
                <xsl:value-of select="/ite/director/despacho"/>
            </xsl:attribute>
            <nombre><xsl:value-of select="/ite/director/nombre"/></nombre>
        </jefe_estudios>
        
    </ciclo>    

    </xsl:for-each>
</ciclos>


</ite>
</xsl:template>
</xsl:stylesheet>
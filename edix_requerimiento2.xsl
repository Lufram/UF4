<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">


      
    <ite> 
             <datos>
                    <xsl:attibute name="nombre">
                         <xsl:value-of select="/ite/@nombre" />
                    </xsl:attibute>
                    <xsl:attibute name="empresa">
                         <xsl:value-of select="/ite/@empresa" />
                    </xsl:attibute>
                    <xsl:attibute name="telefono">
                         <xsl:value-of select="/ite/@telefono" />
                    </xsl:attibute>
                    <xsl:attribute name="web">
                         <xsl:value-of select="/ite/@web"/>
                    </xsl:attribute>
              </datos>
                         
                               
              
             <directiva>
                    <xsl:for-each select="ite/directiva">
                            <xsl:if test="/director">
                                    <tr>
                                           <td><xsl:value-of select="@nombre" /></td>
                                           <td><xsl:value-of select="@despacho" /></td>
                                    </tr> 
                           </xsl:if>
                           <xsl:if test="/jefe_estudios">
                                     <tr>
                                           <td><xsl:value-of select="@nombre" /></td>
                                           <td><xsl:value-of select="@despacho" /></td>
                                     </tr> 
                            </xsl:if>
                     </xsl:for-each>
              </directiva>

              <profesores>
                     <profesor>
                            <xsl:for-each select="/ite/profesores/profesor">
                                 <xsl:attribute name="id">
                                        <xsl:value-of select="id"/>
                                 </xsl:attribute>
                                 <nombre><xsl:value-of select="nombre"/></nombre>                   
                                 <asignatura><xsl:value-of select="asignatura"/></asignatura>                  
                           </xsl:for-each>
                     </profesor>
              </profesores>
   

              <formacion>
                      <xsl:attibute name="grado">
                                <xsl:value-of select="/formacion/@grado" />
                      </xsl:attibute>
                               <ciclo>
                                      <xsl:for-each select="ite/formacion/ciclo">
                                          <xsl:attribute name="id" >
                                             <xsl:value-of select=" ciclo/@id" />
                                          </xsl:attribute>
                                          <nombre><xsl:value-of select="nombre"></xsl:value-of>
                                              <xsl:attibute name="tituloAño" >
                                                   <xsl:value-of select=" nombre/@tituloAño"></xsl:value-of>   
                                              </xsl:attibute>  
                                           </nombre>                                               
                                      </xsl:for-each>
                               </ciclo>
              </formacion>




         </ite>

     </xsl:template>

</xsl:stylesheet>
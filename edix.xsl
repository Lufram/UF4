<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
                <link rel="stylesheet" href="css/style.css" />
                <title>Instituto Tecnologico Edix</title>
               
                <body>
                    <main>
                        <header>
                            <div class="titulo_principal">
                                <h1 class="titulo">
                                     <img class="logo" src="imagenes/logo_edix.jpg" alt="logo" title="Edix"></img>
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="ite/@web" />
                                        </xsl:attribute>
                                        <xsl:value-of select="ite/@nombre" />
                                    </a>
                                </h1>
                                 <p>                                  
                                <xsl:value-of select="ite/telefono" />                              
                                </p>
                                <p>
                                    <xsl:value-of select="ite/empresa"/>
                                </p>
                            </div>
                           
                        </header>

             <div class="tablas">
                           
                        <!-- TABLA PROFESORES -->
                            <h2 class="personal-docente">Personal Docente</h2>
                            <table class="tabla_profesor">
                             
                              
                              <tr class="profesores">
                                    <xsl:for-each select="ite/profesores/profesor">
                                   
                         <!--<td>
                                            <xsl:value-of select="id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="nombre" />
                                        </td> -->               
                           
                                        <div class="fotos_profes">
                                         
                                            <xsl:if test="id=1">
                                                <td class="felix_profe">
                                                    <img id="profesores" src="imagenes/felix.jpg" alt="Felix" title="Felix" class="felix" />
                                                    <xsl:value-of select="id" />
                                                    <xsl:value-of select="nombre" />
                                                </td>
                                            </xsl:if>
                                      
                                            <xsl:if test="id=2">
                                                <td class="raul_profe">
                                                    <img id="profesores" src="imagenes/raul.jpg" alt="Raul" title="Raul" class="raul" />
                                                    <xsl:value-of select="id" />
                                                    <xsl:value-of select="nombre" />
                                                </td>
                                            </xsl:if>
                                            <xsl:if test="id=3">
                                                <td class="raquel_profe">
                                                    <img id="profesores" src="imagenes/raquel.jpeg" alt="Raquel" title="Raquel" class="raquel" />
                                                    <xsl:value-of select="id" />
                                                    <xsl:value-of select="nombre" />
                                                </td>
                                            </xsl:if>
                                            <xsl:if test="id=4">
                                                <td class="tomas_profe">
                                                    <img id="profesores" src="imagenes/tomas.jpg" alt="Tomas" title="Tomas" class="tomas" />
                                                    <xsl:value-of select="id" />
                                                    <xsl:value-of select="nombre" />
                                                </td>
                                            </xsl:if>
                                        </div>
                                    </xsl:for-each>
                                </tr>
                               </table> <!-- FIN TABLA PROFESORES -->
                            
                             
                           
                           
               <h2>Equipo de Dirección</h2><!-- INICIO TABLA DIRECCION -->                   
               <div class="tabla_direccion">
                  <table class="datos">
                                   
                       <tr>
                          <th class="celda" colspan="2">Directora</th>
                                  <td style="font-weight: bold;"><xsl:value-of select="ite/director/nombre" /></td>
                                        
                                        <td class="celda2"><xsl:value-of select="ite/director/despacho" /></td>       
                              </tr>
                                
                                <tr>
                                        <th class="celda" colspan="2">Jefe de estudios</th>
                                         <td  style="font-weight: bold;"><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                                          
                                        <td class="celda2"><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                                </tr>
                           
                                    
                     </table>
                       </div>     <!-- FIN TABLA DIRECCION -->
                          <!-- INICIO TABLA CICLOS -->
                          	<h2 class="titulaciones">Titulaciones impartidas en Edix</h2>
                          <div class="tabla_ciclos">
						          

						    	<div class="ciclos">								
					        			<table class="ciclo">
						        			<tr>	
                                                <th>Ciclo</th>						
                                                <th>Nombre Completo</th>
				        						<th>Nivel</th>
				        						<th>Año</th>
				        					</tr>
								            	<xsl:for-each select="ite/ciclos/ciclo">
									    	           <tr>
									
                                                            <td><xsl:value-of select="@id"/></td> 
										                 	<td><xsl:value-of select="nombre"/></td>
									            	    	<td><xsl:value-of select="grado"/></td>
									            	    	<td><xsl:value-of select="decretoTitulo/@año"/></td>	
									                	</tr>
								            	</xsl:for-each> 
								        </table>
						    	 </div>
						   </div>     <!-- FIN TABLA CICLOS -->
                           <!-- INICIO LISTA MASTERS -->
                              <h2>Completa tu Formación</h2>
                             <div class="lista_masters">
                              
                                 <div class="masters">
                                     <ul>
                                         <li><a href="https://www.edix.com/es/carreras/competencias-digitales/">Curso de Competencias Digitales</a></li>
                                         <li><a href="https://www.edix.com/es/carreras/seo/">SEO (Search Engine Optimization)</a></li>
                                         <li><a href="https://www.edix.com/es/carreras/project-manager-digital/">Digital Product Manager</a></li>
                                         <li><a href="https://www.edix.com/es/carreras/carreras-ecommerce/">Ecommerce</a></li>
                                     </ul>
                                 </div>
                             </div>    <!-- FIN LISTA MASTERS-->

                              
                             <!-- INICIO FORMULARIO --> 

                    <h2 class="contacto">Contacto</h2>
                        <div class="cuerpo-contacto">        
                             <form action="" method="post">
                                  <div class="formulario">  
                                 
                                         <fieldset>
                                                     <legend>Datos Personales</legend>

                                                  <div class="datos-personales">  
                                                          
                                                                 <div class="insert_nombre">
                                                                         <label for="nombre">Nombre</label>
                                                                         <input type="text" name="nombre" title="Introduzca su nombre" />
                                                                 </div>

                                                                    <div class="insert_apellidos">
                                                                          <label for="apellidos">Apellidos</label>
                                                                          <input type="text" name="apellidos" title="Introduzca sus apellidos" />
                                                                    </div>

                                                                    <div class="insert_dni">
                                                                           <label for="dni">DNI</label>
                                                                           <input type="text" name="dni" placeholder="12345678E"  title="Debe poner 8 números y una letra" />
                                                                    </div>
                                                                
                                                                
                                                                       <div class="insert_fecha_nacimiento">
                                 
                                                                               <label for="fecha_nacimiento">
                                                                                    Fecha de Nacimiento</label>
                                                                                <input type="fecha" placeholder="dd/mm/aaaa" title="Indique fecha de nacimiento"/>
                                                                       </div>
                                                                                          
                                                                      <div class="insert_email">
                                                                             <label for="email">Email</label>
                                                                             <input type="email" name="email" placeholder="aprendeprogramacionweb@gmail.com"
                                                                            title="Introduzca su direccion de correo" />
                                                                      </div>
  
                                                                       <div class="insert_telefono">
                                                                            <label for="telefono">Teléfono</label>
                                                                            <input type="tel" name="telefono" placeholder="987654321" title="Telefono de contacto"/>
                                                                       </div>
                                                              
                                                    </div>           
                                                        
                                          </fieldset>
                                                          
                                          <fieldset class= "desplegable">
                                                  <legend>Formación </legend>
                                                  <div class="desplegable_cursos">
                                                      <label>Elija un Ciclo o Master:</label>
                                                           <select  class="intereses" name="interes">
                                                                <option value="">--Seleccione--</option>
                                                                <option value="ASIR">ASIR - Administración de Sistemas Informáticos</option>
                                                                <option value="DAW">DAW - Desarrollo de Aplicaciones Web</option>
                                                                <option value="DAM">DAM - Desarrollo de Aplicaciones Multiplataforma</option>
                                                                <option value="Ciberseguridad">Curso de Competencias Digitales</option>
                                                                <option value="Hacking Etico">SEO (Search Engine Optimization)</option>
                                                                <option value="Perito">Digital Product Manager</option>
                                                                <option value="Malware">Ecommerce</option>
                                                           </select>
                                                        </div>
                                          </fieldset>
                                        
                                          <fieldset>
                                                     <legend>Observaciones</legend>
                                                        <div class="insert_observaciones">
                                                          <textarea placeholder="Puedes escribir aquí tus observaciones..."></textarea>
                                                        </div>
                                          </fieldset>

                                          <div class="checkbox">
                                                       <label for="condicones">Acepto los terminos y condiciones</label>
                                                       <input type="checkbox" class="btn_select" value="condiciones" />
                                         </div>
                                                        <input type="submit" value="Enviar" class="boton-enviar" />
                            
                                     
                    
                    
                                        

                                  </div>
                            </form>
                        </div>
                       </div>                       
                  
                   
              
            
        
                </main>
             </body>
          </head>
       </html>
   </xsl:template>
</xsl:stylesheet>

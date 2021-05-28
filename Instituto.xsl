<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title><xsl:value-of select="ite/empresa"/></title>
    </head>
    <body>

        <div>

            <!-- TITULO-->

            <div>
                <h2><xsl:value-of select="ite/@nombre"/></h2>
            </div>

                <!-- TABLA CICLOS-->

            <div>
                <h3>Nuestos Ciclos</h3>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Decreto del Titulo</th>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="grado"/></td>
                        <td><xsl:value-of select="decretoTitulo/@año"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </div>

            <!-- PROFESORES-->

            <div>
                <h3>Profesores</h3>
                    <div>
                        <h4>Felix</h4>
                        <img src="img/hombre1.0.jpg" alt="Felix" title="Felix"/>
                    </div>
                    <div>
                        <h4>Raul</h4>
                        <img src="img/hombre2.0.jpg" alt="Raul" title="Raul"/>
                    </div>
                    <div>
                        <h4>Raquel</h4>
                        <img src="img/mujer1.0.jpg" alt="Raquel" title="Raquel"/>
                    </div>
                    <div>
                        <h4>Tomas</h4>
                        <img src="img/hombre3.0.jpg" alt="Tomas" title="Tomas"/>
                    </div>

            </div>

                <!-- TABLA DIRECTIVO-->

            <div>   
                <h3>Directivo</h3>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Cargo</th>
                        <th>Despacho</th>
                    </tr> 
                    <tr>
                        <td><xsl:value-of select="ite/director/nombre"/></td>
                        <td>Director</td>
                        <td><xsl:value-of select="ite/director/despacho"/></td>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                        <td>Jefe de estudios</td>
                        <td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                    </tr>
                </table>
            </div> 

                <!-- FORMULARIO-->
            
            <Div>
                <h3>Formulario</h3>
                <form action="" method="get">
                    <fieldset><legend>Solicitud de Ciclo Formativo</legend>
                        <div>
                            <div>
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" placeholder="Escibe tu nombre"/>
                            </div>

                            <div>
                                <label for="apellidos">Apellidos</label>
                                <input type="text" name="apellidos" placeholder="Escibe tus apellidos"/>
                            </div>

                            <div>
                                <label for="DNI">Documento de Identidad</label>
                                <input type="text" name="DNI" placeholder="Escibe tu DNI"/>
                            </div>

                            <div>
                                <label for="edad">Edad</label>
                                <input type="text" name="edad" min="17" placeholder="Escribe tu edad"/>
                            </div>

                            <div>
                                <label for="email">Email</label>
                                <input type="email" name="email" placeholder="Escribe tu correo"/>
                            </div>

                            <div>
                                <label for="telefono">Telefono</label>
                                <input type="tel" name="telefono" placeholder="Escribe tu nº de telefono"/>
                            </div>

                            <div>
                                <label for="Ciclo">Ciclo</label>
                                <select name="Ciclo">
                                    <option value="ASIR">Administración de Sistemas Informáticos en Red</option>
                                    <option value="DAW">Desarrollo de Aplicaciones Web</option>
                                    <option value="DAM">Desarrollo de Aplicaciones Multiplataforma</option>
                                </select>
                            </div>

                            <div>
                                <label for="Observaciones">Observaciones</label>
                                <textarea rows="7" cols="50" name="observaciones"/>>
                            </div>

                            <div>
                                <input type="reset" value="Vaciar formulario" />
                            </div>

                            <div>
                                <input type="submit" value="Enviar Solicitud de Contacto"/>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </Div>

                <!-- CONTACTO-->

            <div>
                <h3>Datos de Contacto</h3>
                <div>
                    <h4>Horario de Secretaria</h4>
                        <ul>
                            <li>Lunes: 9:30 a 20:30</li>
                            <li>Martes: 9:30 a 20:30</li>
                            <li>Miercoles: 9:30 a 20:30</li>
                            <li>Jueves: 9:30 a 20:30</li>
                            <li>Viernes: 9:00 a 17:00</li>
                            <li>Sabado: Cerrado</li>
                            <li>Domingo: Cerrado</li>
                        </ul>
                </div>
                    
                <div>
                    <h4>Telefono:</h4>
                    <p><xsl:value-of select="ite/telefono"/></p>
                </div>

                <div>
                    <h4>Direccion:</h4>
                    <a href="https://goo.gl/maps/N74ibjnixy2doGCZ6">c/ Aravaca 12, Madrid, 28040, España</a>
                </div>

                <div>
                    <h4>Email:</h4>
                    <a href="mailto: secretaria.itt@telefonica.com ">secretaria.itt@telefonica.com</a>
                </div>
            </div>

        </div>

    </body>
</html>
</xsl:template>
</xsl:stylesheet>
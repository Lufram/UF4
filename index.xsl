<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Cursos</title>
            <link rel="stylesheet" href="style.css" />
        </head>

        <body id="contenedor">

             <!-- Encabezado -->
            <header id="header">
                <h1 class= "titulo">
                   <xsl:value-of select="/ite/empresa"/>
                </h1>
                
                <h2 class= "subtitulo">
                    <xsl:value-of select="/ite/telefono"/>
                </h2>

            </header>

            <!-- Menu principal -->
            <div class="navContainer">
                <nav class="navegacion-principal ">
                    <ul>
                        <xsl:for-each select="/ite/paginas/pagina">
                            <li><a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="nombre/@enlace" />
                                </xsl:attribute>
                                <xsl:value-of select="nombre"/>
                            </a>
                            </li>
                        </xsl:for-each>
                    </ul>
                </nav>
            </div>

            <!-- Contenido main -->
            <main class="cuerpo nosotrosMain ">
                <div class="main-banner nosotros">
                    <div class="main-banner-info-container">
                        <h3>Domina las carreras del futuro
                        y trabaja en cualquier lugar del mundo
                        sin salir de casa</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                        <div class="main-banner-button-container">
                            <div class="main-banner-button">
                                <a class="main-button" href="contacto.html">INFORMACION</a>
                            </div>
                            <div class="main-banner-button">
                                <a class="main-button" href="cursos.html">CURSOS</a>    
                            </div>
                        </div>
             
                    </div>
                </div>
        
                <div class="titleContainer">
                    <h2>NUESTROS PROFESORES</h2>   
                </div>
                <div class="container profesores">
                    <xsl:for-each select="/ite/profesores/profesor">
                    <div class="item profesor">
                        <div class="fotoProfesorContainer">
                            <img class="fotoProfesor">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto/@enlace"/>
                                </xsl:attribute>  
                            </img>
                        </div>
                        <div class="nombreContainer">
                            <h4 class="nombreProfesor"> 
                                <xsl:value-of select="nombre"/>
                            </h4>
                        </div>
                        <div class="infoProfesorContainer">
                            <h5 class="skillProfesor">
                                <xsl:value-of select="asignatura"/>
                            </h5>
                            <p class="infoProfesor">
                                <xsl:value-of select="informacion"/>
                            </p>
                        </div>
                    </div>
                    </xsl:for-each>
                    
                       
                </div> 
            
                
            </main>

            <!-- Contenido cursos -->
            <main class="principal-container">
               
                <div class="item" >

                    <h2>Director</h2>
                    
                    <table>

                        <tr>
                        <th>Nombre</th>
                        <th>Despacho</th>
                        </tr>

                        <xsl:for-each select="/ite/director">
                        <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="despacho"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Jefe de estudios</h2>

                    <table>

                        <tr>
                        <th>Nombre</th>
                        <th>Despacho</th>
                        </tr>

                        <xsl:for-each select="/ite/jefe_estudios">
                        <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="despacho"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                    
                </div>
                <div class="item" >
                    <h2>Ciclos</h2>
                    
                    <table>

                        <tr bgcolor="#9acd32">
                        <th>Grado</th>
                        <th>Descripcion</th>
                        <th>Tipo</th>
                        <th>Año Decreto</th>
                        </tr>

                        <xsl:for-each select="/ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>    
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <br/>
                <br/>
                <br/>

            </main>

            <!-- Contenido cursos -->
            <article class="articleContainer">
                <div class="main-banner cursos">
                    <div class="main-banner-info-container">
                        <div class="separador-banner"></div>
                       <h3>LOS LENGUAJES DE PROGRAMACIÓN WEB CON MAS DEMANDA</h3>
                       <p>Solace House provides free, confidential, therapeutic counseling for anyone who is experiencing suicidal thoughts or suicidal distress, as well as those who engage in self-harm, or have been bereaved by suicide.
        
                        Our staff are highly trained professionals, who are extremely welcoming and always respectful of your confidentiality.</p>   
                    </div>
                </div>
         
                <div class="titleContainer">
                    <h2>NUESTROS PRODUCTOS</h2>   
                </div>
        
                <ul class="lista-productos">
                    <xsl:for-each select="/ite/cursos/curso">
                        <li class="item">
                            <img class="imagenCurso">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="imagen/@enlace"/>
                                </xsl:attribute>
                            </img>
                            <p class="p-cursos"><xsl:value-of select="producto"/></p>
                            <p><xsl:value-of select="descripcion"/></p>
                            <p><span class="precio"><xsl:value-of select="precio"/><xsl:value-of select="@moneda"/> </span></p>
                            <button><a href="#" class="boton">Comprar</a></button>
                        </li>
                    </xsl:for-each>
                </ul>


            </article>

            <!-- Contenido informacion -->
            <article class="articleContainer">
                
                <form action="" method="get">
                    <fieldset>
                    <legend><xsl:value-of select="/ite/informacion/infPersonal/@name"/></legend>
                    <xsl:for-each select="/ite/informacion/infPersonal/*">
                        <xsl:choose>
                            <xsl:when test="@sex">
                                <br/>
                                <xsl:value-of select="@content"/>
                                <br/>
                                <xsl:for-each select="sexo">
                                    <input class="infPersonal radio">  
                                        <xsl:attribute name="type">
                                            <xsl:value-of select="@type"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="name">
                                            <xsl:value-of select="@name"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="@value"/>
                                        </xsl:attribute>
                                        
                                    </input>
                                    <xsl:value-of select="@content"/>
                                    <br/>
                                </xsl:for-each>
                                <br/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="@content"/>
                                <br/>
                                <input class="infPersonal">

                                    <xsl:attribute name="type">
                                        <xsl:value-of select="@type"/>
                                    </xsl:attribute>
        
                                    <xsl:attribute name="nombre">
                                        <xsl:value-of select="@nombre"/>
                                    </xsl:attribute>
                                    
                                    <xsl:choose>
                                        <xsl:when test="@tamaño">
                                            <xsl:attribute name="size">
                                                <xsl:value-of select="@tamaño"/>
                                            </xsl:attribute>
                                        </xsl:when>
                                    </xsl:choose>   
                                </input>
                                <br/>
                                <br/>
                                <br/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>

                    </fieldset>
                    <br/>
                    <br/>
                    <fieldset>
                        <legend><xsl:value-of select="/ite/informacion/infAdicional/@name"/></legend>
                        <xsl:value-of select="/ite/informacion/infAdicional/conocimientos/titulo"/>
                        <br/>
                        <br/>
                        <xsl:for-each select="/ite/informacion/infAdicional/conocimientos/conocimiento">
                            <xsl:value-of select="@content"/>
                            <br/>
                            <input type="range" name="rango" min="1" max="10" step="1">
                            </input>
                            <br/>
                            <br/>
                            <br/>
                        </xsl:for-each>
                        <xsl:value-of select="/ite/informacion/infAdicional/intereses/titulo"/>
                        <br/>
                        <br/>
                        <xsl:for-each select="/ite/informacion/infAdicional/intereses/interes">
                        <xsl:choose>
                            <xsl:when test="@content='ciclos'">
                                    <xsl:for-each select="/ite/ciclos/ciclo">
                                        <input type="radio">
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="@id"/>
                                            </xsl:attribute>
                                        </input>    
                                        <xsl:value-of select="@id"/>
                                        <br/>
                                       
                                    </xsl:for-each>
                                    <br/><br/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:for-each select="/ite/cursos/curso">
                                    <input type="radio">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="producto"/>
                                        </xsl:attribute>
                                    </input>    
                                    <xsl:value-of select="producto"/>
                                    <br/>
                                    </xsl:for-each>
                                    <br/><br/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                

                </fieldset>
                <fieldset>
                    <p>
                        <input type="submit" value="Enviar"/>
                        <input type="reset" value="Borrar"/>
                    </p>
                </fieldset>
                </form>
            </article>

            <!-- Footer -->
            <footer class="site-footer">
                <div class=" contenedor-footer">
                        <nav class="navegacion-footer">
                            <xsl:for-each select="/ite/paginas/pagina">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="nombre/@enlace" />
                                </xsl:attribute>
                                <xsl:value-of select="nombre"/>
                            </a>
                        </xsl:for-each>
                        </nav>
                        <p class="copyright">Todos los Derechos Reservados 2021</p>
                    </div>
            </footer>

        </body>
    </html>

</xsl:template>
</xsl:stylesheet>
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
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Noticias</a></li>
                        <li><a href="#">Cursos</a></li>
                        <li><a href="#">Contacto</a></li>
                    </ul>
                </nav>
            </div>

            <!-- Contenido index -->
            <main class="cuerpo">

                <h2>Profesores</h2>
                
                <table border="1">

                    <tr bgcolor="#9acd32">
                    <th>Numero</th>
                    <th>Profesor</th>
                    </tr>

                    <xsl:for-each select="/ite/profesores/profesor">
                    <tr>
                    <td><xsl:value-of select="id"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
                
                
                <h2>Director</h2>

                <xsl:for-each select="/ite/director">
                    <xsl:value-of select="nombre" />
                    <br/>
                    <xsl:value-of select="despacho" />
                    <br/>
                </xsl:for-each>

                <h2>Jefe de estudios</h2>

                <xsl:for-each select="/ite/jefe_estudios">
                    <xsl:value-of select="nombre" />
                    <br/>
                    <xsl:value-of select="despacho" />
                    <br/>
                </xsl:for-each>

                <h2>Ciclos</h2>
                
                <table border="1">

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


            </main>


            <!-- Footer -->
            <footer class="site-footer">
                <div class=" contenedor-footer">
                        <nav class="navegacion-footer">
                            <a href="#">Home</a>
                            <a href="#">Nosotros</a>
                            <a href="#">Cursos</a>
                            <a href="#">Contacto</a>
                        </nav>
                        <p class="copyright">Todos los Derechos Reservados 2021</p>
                    </div>
            </footer>

        </body>
    </html>

</xsl:template>
</xsl:stylesheet>
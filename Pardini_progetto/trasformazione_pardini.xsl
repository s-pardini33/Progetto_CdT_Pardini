<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
    <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title> 
                <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
            </title>
            <script src="javascript.js"></script>
            <link rel="stylesheet" type="text/css" href="style.css" />
        </head>
        <body>
            <div id="top">
                <h1 id="TopTitle"><strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></strong></h1>
                <xsl:variable name="author" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name/tei:persName" />
                <h2><strong><xsl:value-of select="concat(tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp,' ',$author/tei:forename,' ',$author/tei:surname)"/></strong></h2>   
                <div id="pubblicazione">
                    <p><h2>Pubblicazione:</h2></p>
                    <p><strong>Presso: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/></p>
                    <p><strong>Il: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/></p>
                    <p><strong>Stato: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/></p>
                </div>
            </div>
            <header>
                <ul id="navbar">
                    <li><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[1]/tei:title"/></li>
                    <li><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[2]/tei:title"/></li>
                    <li><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[3]/tei:title"/> - Manzoni</li>
                    <li><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[3]/tei:title"/> - Poesia popolare italiana</li>
                    <li><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[5]/tei:title"/></li>
                </ul>
            </header>
            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[1]"/>
            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[2]"/>
            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[3]"/>
            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[4]"/>
            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[5]"/>
            <div class="buttons">
                <h2 id="fenomeni">Fenomeni Notevoli:</h2>
                <button id="persone">Persone</button>
                <button id="occupazioni">Occupazioni</button>
                <button id="nazionalita">Nazionalità</button>
                <button id="quadri">Quadri</button>
                <button id="straniera">Parole in lingua straniera</button>
                <button id="titolo">Titolo</button>
                <button id="cit">Citazioni</button>
                <button id="org">Organizzazioni</button>
                <button id="nazioni">Nazioni</button>
                <button id="continenti">Continenti</button>
                <button id="term">Termini</button>
                <button id="citta">Città</button>
                <button id="regioni">Regioni</button>
                <button id="date">Date</button>
                <button id="q">Termini dell'opera</button>
                <button id="bibl">Riferimenti bibliografici</button>
                <button id="glosse">Glosse</button>
                <button id="abbr">Abbreviazioni</button>
                <button id="note">Note</button>
            </div>
            <div id="bellearti">
                <div class="img_based">
                    <div class="img">
                        <xsl:apply-templates select="tei:TEI/tei:facsimile/tei:surface[position() &lt;= 2]" />
                    </div>
                    <div class="cod">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:group/tei:text[1]" />
                    </div>
                </div>

            </div>
            <div id="intendio">
                <div class="img_based">
                    <div class="img">
                        <xsl:apply-templates select="tei:TEI/tei:facsimile/tei:surface[3]" />
                    </div>
                    <div class="cod">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:group/tei:text[2]" />
                    </div>
                </div>

            </div>
            <div id="manzoni">
                <div class="img_based">
                    <div class="img">
                        <xsl:apply-templates select="tei:TEI/tei:facsimile/tei:surface[position() &gt;= 4 and position() &lt;= 5]" />
                    </div>
                    <div class="cod">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:group/tei:text[3]" />
                    </div>
                </div>

            </div>
            <div id="poesia">
                <div class="img_based">
                    <div class="img">
                        <xsl:apply-templates select="tei:TEI/tei:facsimile/tei:surface[6]" />
                    </div>
                    <div class="cod">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:group/tei:text[4]" />
                    </div>
                </div>

            </div>
            <div id="notizie">
                <div class="img_based">
                    <div class="img">
                        <xsl:apply-templates select="tei:TEI/tei:facsimile/tei:surface[7]" />
                    </div>
                    <div class="cod">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:group/tei:text[5]" />
                    </div>
                </div>
            </div>
            <footer>
                <p>Progetto realizzato da Silvia Pardini. Matricola 637445</p>
                <p>Corso di Codifica di Testi. A.A 2023/2024</p>
                <p>Laurea triennale di Informatica Umanistica. Università di Pisa</p>
                <p>Visita <a href="https://rassegnasettimanale.animi.it/">qua</a> il sito della Rassegna Settimanale</p>
            </footer>
        </body> 
    </html>
    </xsl:template>

        <!--INFO GENERALE PER LE PRIME 5 <bibl>-->
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[position() &lt;= 5]">
        <div class="info">
            <h2>Informazioni:</h2>
            <p><strong>Titolo:  </strong>
                <xsl:value-of select="tei:title" />
            </p>
            <p><strong>Autore:  </strong>
                <xsl:choose>
                    <xsl:when test="tei:author/*">
                        <xsl:apply-templates select="tei:author/*" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="tei:author" />
                    </xsl:otherwise>
                </xsl:choose>
            </p>
            <p><strong>Pubblicato a:  </strong>
                <xsl:value-of select="tei:pubPlace" />
            </p>
            <p><strong>Editore:  </strong>
                <xsl:value-of select="tei:publisher" />
            </p>
            <p><strong>Data:  </strong>
                <xsl:value-of select="tei:date" />
            </p>
        </div>
    </xsl:template>

    <xsl:template match="tei:surface">
            <img src="{tei:graphic/@url}" alt="Facsimile delle pagina {tei:graphic/@xml:id}"/>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text/tei:group/tei:text">
        <div>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="tei:p">
        <p>
            <xsl:apply-templates />
        </p>
    </xsl:template>

    <xsl:template match="tei:lb">
        <br />
    </xsl:template>

    <xsl:template match="tei:cb">
        <br />
        <br />
    </xsl:template>

    <xsl:template match="tei:pb">
        <br />
        <br />
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:date">
        <span class="ev_date">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:dateline">
        <span class="dateline">
            <br />
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:ab">
        <span class="dateline">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:country">
        <span class="ev_nazioni">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:bloc">
        <span class="ev_continenti">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:region">
        <span class="ev_regioni">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:settlement">
        <span class="ev_citta">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:orgName">
        <span class="ev_org">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:persName">
        <span class="ev_persone">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:ab/tei:surname">
        <span class="ev_persone">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:occupation">
        <span class="ev_occupazioni">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:nationality">
        <span class="ev_nazionalita">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:objectName">
        <span class="ev_quadri">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:foreign">
        <span class="ev_straniera">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:abbr">
        <span class="ev_abbr">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:expan">
        <span class="ev_abbr" style="display:none;" id="expan">
            <strong><xsl:value-of select="." /></strong>
        </span>
    </xsl:template>

    <xsl:template match="tei:quote">
        <span class="ev_cit">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:cit">
        <span class="ev_cit">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:term">
        <span class="ev_term">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:title">
        <span class="ev_titolo">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:TEI/tei:text//tei:titlePart">
        <span class="ev_titolo">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:q">
        <span class="ev_q">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:body//tei:bibl">
        <span class="ev_bibl">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:gloss">
        <span class="ev_glosse">
            <xsl:choose>
                <xsl:when test="@rendition='#italic'">
                    <em>
                        <xsl:apply-templates />
                    </em>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="tei:note">
        <span class="ev_note">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


</xsl:stylesheet>
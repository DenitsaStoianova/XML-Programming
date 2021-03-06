<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="basic_table_style.css"/>
                <title>XML Каталог за компютърни игри</title>
            </head>
            <body>
                <h2>
                    Поредица <xsl:value-of select="game_catalog/series/basic_info/title"/>
                </h2>
                <table class="center">
                    <tr>
                        <th>Код</th>
                        <th>Категория</th>
                        <th>Заглавие</th>
                        <th>Език</th>
                        <th>Цена</th>
                        <th>Снимка</th>
                    </tr>
                    <xsl:for-each select="game_catalog/series/games/game">
                        <tr>
                            <td>
                                <xsl:value-of select="@code"/>
                            </td>
                            <td>
                                <xsl:value-of select="@category"/>
                            </td>
                            <td>
                                <xsl:value-of select="basic_info/title"/>
                            </td>
                            <td>
                                <xsl:value-of select="language"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>&#160;<xsl:value-of select="price/@currency"/>
                            </td>
                            <td>
                                <img src="images/{image}" width="150" height="200"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
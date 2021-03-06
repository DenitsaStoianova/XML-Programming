<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>XML Каталог за компютърни игри</title>
                <link rel="stylesheet" type="text/css" href="descriptions_style.css"/>
            </head>
            <body>
                <h2>
                    Поредица
                    <xsl:value-of select="game_catalog/series/basic_info/title"/>
                </h2>
                <xsl:for-each select="game_catalog/series/games/game">
                    <h4>Игра: <xsl:value-of select="basic_info/title"/></h4>
                    <xsl:for-each select="descriptions/description">
                        <table>
                            <tr>
                                <td>
                                    <xsl:value-of select="part_number"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="part_title"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="text"/>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
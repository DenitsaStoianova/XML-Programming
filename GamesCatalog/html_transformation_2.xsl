<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>XML Каталог за компютърни игри</title>
                <link rel="stylesheet" type="text/css" href="basic_info_style.css"/>
            </head>
            <body>
                <h2>
                    Поредица <xsl:value-of select="game_catalog/series/basic_info/title"/>
                </h2>
                <h4>
                    Година на издаване: <xsl:value-of select="game_catalog/series/basic_info/release_year"/>
                </h4>
                <xsl:for-each select="game_catalog/series/games/game/basic_info">
                <table>
                    <tr>
                        <td>Игра: <xsl:value-of select="title"/></td>
                    </tr>
                    <tr>
                        <td>Година: <xsl:value-of select="release_year"/></td>
                    </tr>
                    <tr>
                        <td>Студио: <xsl:value-of select="developer/studio_name"/></td>
                    </tr>
                    <tr>
                        <td>Националност: <xsl:value-of select="developer/nationality"/></td>
                    </tr>
                    <tr>
                        <td>Основател: <xsl:value-of select="developer/founder"/></td>
                    </tr>
                </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
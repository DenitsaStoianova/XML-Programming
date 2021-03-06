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
                <xsl:for-each select="game_catalog/series/games/game">
                    <table>
                        <tr>
                            <td>Игра: <xsl:value-of select="basic_info/title"/></td>
                        </tr>
                        <tr>
                            <td>Процесор: <xsl:value-of select="system_requirements/processor"/></td>
                        </tr>
                        <tr>
                            <td>ОС: <xsl:call-template name="game_os"/></td>
                        </tr>
                        <tr>
                            <td>Звукова карта: <xsl:value-of select="system_requirements/sound_card/@has"/></td>
                        </tr>
                        <tr>
                            <td>Свободно място: <xsl:call-template name="game_available_space"/></td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="game_os">
        <xsl:value-of select="system_requirements/os"/>&#160;<xsl:value-of select="system_requirements/os/@bits"/>
    </xsl:template>

    <xsl:template name="game_available_space">
        <xsl:value-of select="system_requirements/available_space"/>&#160;<xsl:value-of select="system_requirements/available_space/@unit"/>
    </xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог за компютърни игри
        <xsl:for-each select="/game_catalog/series/games/game">
            Код на играта: <xsl:value-of select="@code"/>
            Име: <xsl:value-of select="basic_info/title/."/>
            Година: <xsl:value-of select="basic_info/release_year/."/>
            Цена: <xsl:value-of select="price"/>&#160;<xsl:value-of select="price/@currency"/>
            Разработчик на играта: <xsl:call-template name="game_developer"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>

        <xsl:template name="game_developer">
            Студио: <xsl:value-of select="basic_info/developer/studio_name/."/>
            Националност: <xsl:value-of select="basic_info/developer/nationality/."/>
            Основател: <xsl:value-of select="basic_info/developer/founder/."/>
        </xsl:template>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>

</xsl:stylesheet>
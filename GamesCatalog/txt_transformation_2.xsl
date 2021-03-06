<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог за компютърни игри
        <xsl:for-each select="/game_catalog/series/games/game">
            Код на играта: <xsl:value-of select="@code"/>
            Име: <xsl:value-of select="basic_info/title/."/>
            Език: <xsl:value-of select="language/."/>
            Системни изисквания: <xsl:call-template name="game_system_requirements"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>

        <xsl:template name="game_system_requirements">
            Процесор: <xsl:value-of select="system_requirements/processor/."/>
            ОС: <xsl:value-of select="system_requirements/os/."/>&#160;<xsl:value-of select="system_requirements/os/@bits"/>
            Звукова карта: <xsl:value-of select="system_requirements/sound_card/@has"/>
            Свободно място: <xsl:value-of select="system_requirements/available_space/."/>&#160;<xsl:value-of select="system_requirements/available_space/@unit"/>
        </xsl:template>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>

</xsl:stylesheet>
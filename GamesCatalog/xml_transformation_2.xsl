<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <game_catalog>
            <series>
                <basic_info>
                    <title><xsl:value-of select="game_catalog/series/basic_info/title"/></title>
                    <release_year><xsl:value-of select="game_catalog/series/basic_info/release_year"/></release_year>
                </basic_info>
                <games>
                    <xsl:for-each select="game_catalog/series/games/game">
                        <game>
                            <basic_info>
                                <title><xsl:value-of select="basic_info/title"/></title>
                                <release_year><xsl:value-of select="basic_info/release_year"/></release_year>
                            </basic_info>
                            <price><xsl:value-of select="price"/></price>
                            <language><xsl:value-of select="language"/></language>
                            <image><xsl:value-of select="image"/></image>
                            <xsl:call-template name="game_descriptions"/>
                        </game>
                    </xsl:for-each>
                </games>
            </series>
        </game_catalog>
    </xsl:template>

    <xsl:template name="game_descriptions">
        <descriptions>
            <xsl:for-each select="descriptions/description">
                <description>
                    <part_number><xsl:value-of select="part_number"/></part_number>
                    <part_title><xsl:value-of select="part_title"/></part_title>
                    <text>
                        <xsl:value-of select="text"/>
                    </text>
                </description>
            </xsl:for-each>
        </descriptions>
    </xsl:template>

</xsl:stylesheet>
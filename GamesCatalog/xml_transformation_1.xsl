<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <game_catalog>
            <series>
                <basic_info>
                    <title><xsl:value-of select="game_catalog/series/basic_info/title"/></title>
                    <release_year><xsl:value-of select="game_catalog/series/basic_info/release_year"/></release_year>
                    <developer>
                        <studio_name><xsl:value-of select="game_catalog/series/basic_info/developer/studio_name"/></studio_name>
                        <nationality><xsl:value-of select="game_catalog/series/basic_info/developer/nationality"/></nationality>
                        <founder><xsl:value-of select="game_catalog/series/basic_info/developer/founder"/></founder>
                    </developer>
                </basic_info>
                <games>
                    <xsl:for-each select="game_catalog/series/games/game">
                        <game>
                           <basic_info>
                              <title><xsl:value-of select="basic_info/title"/></title>
                              <release_year><xsl:value-of select="basic_info/release_year"/></release_year>
                              <developer>
                                  <studio_name><xsl:value-of select="basic_info/developer/studio_name"/></studio_name>
                                  <nationality><xsl:value-of select="basic_info/developer/nationality"/></nationality>
                                  <founder><xsl:value-of select="basic_info/developer/founder"/></founder>
                              </developer>
                           </basic_info>
                        </game>
                    </xsl:for-each>
                </games>
            </series>
        </game_catalog>
    </xsl:template>
</xsl:stylesheet>
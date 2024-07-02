<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="uuid" />

    <xsl:template match="/">
        <root>
            <xsl:apply-templates select="root/items[uuid = $uuid]" />
        </root>
    </xsl:template>

    <xsl:template match="items">
        <xsl:copy>
            <xsl:copy-of select="@*|node()" />
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
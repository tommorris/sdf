<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:h="http://www.w3.org/1999/xhtml" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes" />
    <xsl:template match="h:html">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" margin="0.5in">
                    <fo:region-body />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select="h:body" />
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template match="h:h1">
        <fo:block>
            <!-- TODO: make text output bigger -->
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>
    <xsl:template match="h:div | h:p">
        <fo:block>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    <xsl:template match="h:em | h:i">
        <fo:inline font-style="italic">
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
    <xsl:template match="h:strong | h:b">
        <fo:inline font-weight="bold">
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
		<xsl:template match="h:hr">
				<fo:block>
						<fo:leader leader-pattern="rule" />
				</fo:block>
		</xsl:template>
		<xsl:template match="h:kbd">
				<fo:inline font-family="monospace" font-size="110%">
						<xsl:apply-templates />
				</fo:inline>
		</xsl:template>
    <xsl:template match="text()">
        <xsl:copy>
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
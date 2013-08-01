<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_taxlots</sld:Name>
  <sld:Title>Medford, OR - Taxlots</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Taxlots &lt; 35K </sld:Name>
      <sld:Title>Taxlots &lt; 15K</sld:Title>
      <sld:MaxScaleDenominator>15000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#333333</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:Stroke>
          <sld:CssParameter name="stroke">
            <ogc:Literal/>
          </sld:CssParameter>
          <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.5</sld:CssParameter>
        </sld:Stroke>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

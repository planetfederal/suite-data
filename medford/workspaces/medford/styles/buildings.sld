<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_buildings</sld:Name>
  <sld:Title>Medford, OR - Buildings</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Buildings &lt; 35K </sld:Name>
      <sld:Title>Buildings 17K-8.5K</sld:Title>
      <sld:MinScaleDenominator>8500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>17000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#333333</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.2</sld:CssParameter>
        </sld:Fill>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#333333</sld:CssParameter>
          <sld:CssParameter name="stroke-opacity">0.4</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.5</sld:CssParameter>
        </sld:Stroke>
      </sld:PolygonSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Buildings &lt; 8.5K</sld:Title>
      <sld:MaxScaleDenominator>8500.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#333333</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.4</sld:CssParameter>
        </sld:Fill>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#333333</sld:CssParameter>
          <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.5</sld:CssParameter>
        </sld:Stroke>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

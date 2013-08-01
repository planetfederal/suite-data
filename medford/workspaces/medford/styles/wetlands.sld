<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_wetlands</sld:Name>
  <sld:Title>Medford, OR - Wetlands</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Large 280K-70K</sld:Name>
      <sld:Title>Large Wetlands 280K-70K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsGreaterThanOrEqualTo>
          <ogc:PropertyName>acres</ogc:PropertyName>
          <ogc:Literal>14</ogc:Literal>
        </ogc:PropertyIsGreaterThanOrEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>70000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#3182BD</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.8</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Wetlands &lt; 70K </sld:Name>
      <sld:Title>Wetlands &lt; 70K</sld:Title>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#3182BD</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.8</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

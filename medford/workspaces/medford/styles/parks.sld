<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_parks</sld:Name>
  <sld:Title>Medford, OR - Parks</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Forest Parks</sld:Name>
      <sld:Title>Forest Parks &lt; 280K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>parktype</ogc:PropertyName>
          <ogc:Literal>Forest Park</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#238B45</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.8</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Parks</sld:Name>
      <sld:Title>Parks &lt; 140K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>parktype</ogc:PropertyName>
          <ogc:Literal>Park</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>1000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>140000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#74C476</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.8</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Recreational</sld:Name>
      <sld:Title>Recreational &lt; 70K</sld:Title>
      <sld:ElseFilter/>
      <sld:MinScaleDenominator>1000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#BAE4B3</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.8</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

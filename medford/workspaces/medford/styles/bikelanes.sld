<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_bikelanes</sld:Name>
  <sld:Title>Medford, OR - Bike Lanes</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Title>Bike Lanes &lt; 8.5K</sld:Title>
      <sld:MaxScaleDenominator>8500.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#253494</sld:CssParameter>
          <sld:CssParameter name="stroke-width">9</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Bike Lanes 17K-8.5K</sld:Title>
      <sld:MinScaleDenominator>8500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>17000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#253494</sld:CssParameter>
          <sld:CssParameter name="stroke-width">9</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

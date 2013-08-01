<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_citylimits</sld:Name>
  <sld:Title>City Limits Style</sld:Title>
  <sld:Abstract>Basic polygon fill in gray with opacity.  Border increases with zoom level.</sld:Abstract>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>citylimits</sld:Name>
      <sld:Title>City Limits &lt; 280K </sld:Title>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#E5E5E5</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>citylimits</sld:Name>
      <sld:Title>City Limits Border &lt; 70K </sld:Title>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#b3b3b3</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.75</sld:CssParameter>
        </sld:Stroke>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

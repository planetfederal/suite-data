<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_firestations</sld:Name>
  <sld:Title>Medford, OR - Fire Stations</sld:Title>
  <sld:Abstract>Point style with external graphic for Jackson county fire stations</sld:Abstract>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Fire Stations</sld:Name>
      <sld:Title>Fire Stations 70K-25K</sld:Title>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="firebrigade13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>10</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Fire Stations</sld:Name>
      <sld:Title>Fire Stations 35K-17.5</sld:Title>
      <sld:MinScaleDenominator>17500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="firebrigade13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>13</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Fire Stations</sld:Name>
      <sld:Title>Fire Stations &lt; 17.5</sld:Title>
      <sld:MaxScaleDenominator>17500.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="firebrigade16.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>16</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>
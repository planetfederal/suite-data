<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_police</sld:Name>
  <sld:Title>Medford, OR - Police</sld:Title>
  <sld:Abstract>Point style for Medford city schools</sld:Abstract>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Police</sld:Name>
      <sld:Title>Police 70K-35K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>place</ogc:PropertyName>
          <ogc:Literal>*Medford*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="police13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>8</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Police</sld:Name>
      <sld:Title>Police 35K-17.5</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>place</ogc:PropertyName>
          <ogc:Literal>*Medford*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>17500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="police13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>10</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Police</sld:Name>
      <sld:Title>Police &lt; 17.5</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>place</ogc:PropertyName>
          <ogc:Literal>*Medford*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MaxScaleDenominator>17500.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="police13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>12</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>name</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">11</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>1.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>
            <ogc:Literal>2</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#0000FF</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="autoWrap">100</sld:VendorOption>
        <sld:VendorOption name="spaceAround">20</sld:VendorOption>
        <sld:VendorOption name="allowOverrun">true</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>
<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_schools</sld:Name>
  <sld:Title>Medford, OR - Schools</sld:Title>
  <sld:Abstract>External graphic for Medford Elementary, Middle, and High Schools.</sld:Abstract>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>Elementary Schools</sld:Name>
      <sld:Title>Elementary Schools 1:70K-1:35K</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>Elementary</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="elementary_school13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>13</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Middle Schools</sld:Name>
      <sld:Title>Middle Schools 1:70K-1:35K</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>Middle</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="middle_school13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>13</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>High Schools</sld:Name>
      <sld:Title>High Schools 1:70K-1:35K</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>High School</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="high_schoo13.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>13</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Elementary Schools</sld:Name>
      <sld:Title>Elementary Schools 1:35K-1:8.5</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>Elementary</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MinScaleDenominator>8500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="elementary_school16.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>16</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Middle Schools</sld:Name>
      <sld:Title>Middle Schools 1:35K-1:8.5</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>Middle</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MinScaleDenominator>8500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="middle_school16.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>16</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>High Schools</sld:Name>
      <sld:Title>High Schools 1:35K-1:8.5</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>High School</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MinScaleDenominator>8500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="high_school16.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>16</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Elementary Schools</sld:Name>
      <sld:Title>Elementary Schools &lt; 1:8.5</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>Elementary</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>8500.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="elementary_school20.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>20</ogc:Literal>
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
                <ogc:Literal>-1</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>
            <ogc:Literal>1.0</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="autoWrap">100</sld:VendorOption>
        <sld:VendorOption name="spaceAround">20</sld:VendorOption>
        <sld:VendorOption name="allowOverrun">true</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Middle Schools</sld:Name>
      <sld:Title>Middle Schools &lt; 1:8.5</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>Middle</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>8500.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="middle_school20.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>20</ogc:Literal>
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
                <ogc:Literal>-1</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>
            <ogc:Literal>1.0</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#26a32b</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="autoWrap">100</sld:VendorOption>
        <sld:VendorOption name="spaceAround">20</sld:VendorOption>
        <sld:VendorOption name="allowOverrun">true</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>High Schools</sld:Name>
      <sld:Title>High Schools &lt; 1:8.5</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>city</ogc:PropertyName>
            <ogc:Literal>medford</ogc:Literal>
          </ogc:PropertyIsLike>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>High School</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>8500.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="highschool_school20.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>20</ogc:Literal>
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
                <ogc:Literal>-1</ogc:Literal>
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
          <sld:CssParameter name="fill">#004d96</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="autoWrap">100</sld:VendorOption>
        <sld:VendorOption name="spaceAround">20</sld:VendorOption>
        <sld:VendorOption name="allowOverrun">true</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>
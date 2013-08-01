<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_streets</sld:Name>
  <sld:Title>Medford, OR - Streets</sld:Title>
  <sld:Abstract>Attribute zoom, label and larger, darker lines for more more developed street types</sld:Abstract>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>RailRoad </sld:Name>
      <sld:Title>RailRoad 1:220K-1:56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>rail_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>56000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
          <sld:CssParameter name="stroke-dasharray">5.0 4.0 </sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>RailRoad </sld:Name>
      <sld:Title>RailRoad &lt; 1:56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>rail_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MaxScaleDenominator>56000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">2.5</sld:CssParameter>
          <sld:CssParameter name="stroke-dasharray">5.0 4.0 </sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Streets</sld:Name>
      <sld:Title>Streets 1:220K-1:110K</sld:Title>
      <sld:ElseFilter/>
      <sld:MinScaleDenominator>110000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#a5a5a5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.25</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Streets</sld:Name>
      <sld:Title>Streets 1:110K-1:18K</sld:Title>
      <sld:ElseFilter/>
      <sld:MinScaleDenominator>18000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>110000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#a5a5a5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Streets</sld:Name>
      <sld:Title>Streets 18K-9K</sld:Title>
      <sld:ElseFilter/>
      <sld:MinScaleDenominator>9000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>18000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#a5a5a5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>
            <ogc:Literal>1</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Streets</sld:Name>
      <sld:Title>Streets 9K-4.5K</sld:Title>
      <sld:ElseFilter/>
      <sld:MinScaleDenominator>4500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>9000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#a5a5a5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">11</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">bold</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>
            <ogc:Literal>1</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Streets</sld:Name>
      <sld:Title>Streets &lt; 4.5K</sld:Title>
      <sld:ElseFilter/>
      <sld:MaxScaleDenominator>4500.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#a5a5a5</sld:CssParameter>
          <sld:CssParameter name="stroke-width">5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">12</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">bold</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>
            <ogc:Literal>1</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Major Roads</sld:Name>
      <sld:Title>Major Roads 1:280K-1:220K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>major_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>220000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Major Roads</sld:Name>
      <sld:Title>Major Roads 1:220K-1:110K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>major_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>110000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#737373</sld:CssParameter>
          <sld:CssParameter name="stroke-width">2</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Major Roads</sld:Name>
      <sld:Title>Major Roads 1:110K-56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>major_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>56000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>110000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#737373</sld:CssParameter>
          <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Major Roads</sld:Name>
      <sld:Title>Major Roads 1:56K-18K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>major_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>18000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>56000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#737373</sld:CssParameter>
          <sld:CssParameter name="stroke-width">5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">Arial</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">bold</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
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
            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#000133</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Major Roads</sld:Name>
      <sld:Title>Major Roads &lt; 1:18K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>major_roads</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MaxScaleDenominator>18000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#737373</sld:CssParameter>
          <sld:CssParameter name="stroke-width">6</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">12</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">bold</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
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
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway</sld:Name>
      <sld:Title>Highway 1:280K-220K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>*HIGHWAY*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>220000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway-62</sld:Name>
      <sld:Title>Highway-62 1:220K-1:110K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>*HIGHWAY 62*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>110000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
								<ogc:Literal>-1.0</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">50</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="OR_6215.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>15</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway-62</sld:Name>
      <sld:Title>Highway-62 1:110K-56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>*HIGHWAY 62*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>56000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>110000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>-1.0</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">50</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="OR_6215.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>15</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway-62</sld:Name>
      <sld:Title>Highway-62 &lt; 1:56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>*HIGHWAY 62*</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MaxScaleDenominator>56000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>-1.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">50</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="OR_6218.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>158</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway-238</sld:Name>
      <sld:Title>Highway-238 1:220K-1:110K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>HIGHWAY 238</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>110000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>-1.0</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">50</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="OR_23818.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>15</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway-238</sld:Name>
      <sld:Title>Highway-238 1:110K-56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>HIGHWAY 238</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>56000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>110000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#5d5d5d</sld:CssParameter>
          <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>-1.0</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">50</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="OR_23815.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>15</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Highway-238</sld:Name>
      <sld:Title>Highway-238 &lt; 1:56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>streetname</ogc:PropertyName>
          <ogc:Literal>HIGHWAY 238</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MaxScaleDenominator>56000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#5d5d5d</sld:CssParameter>
          <sld:CssParameter name="stroke-width">5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>-1.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">50</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="OR_23818.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>18</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate 1:280K-1:220K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>220000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate 1:220K-1:110K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>110000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Intersate</sld:Name>
      <sld:Title>Interstate 1:110K-1:56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>56000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>110000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate 1:56K-18K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>18000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>56000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">6</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate &lt; 1:18K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MaxScaleDenominator>18000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">8</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate 1:280K-1:220K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>220000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.25</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">150</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="interstate_512.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>12</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate 1:220K-1:110K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>110000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>220000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">150</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="interstate_515.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>15</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Intersate</sld:Name>
      <sld:Title>Interstate 1:110K-1:56K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>56000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>110000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">150</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="interstate_518.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>18</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate 1:56K-18K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MinScaleDenominator>18000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>56000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">Serif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">150</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="interstate_521.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>21</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>Interstate</sld:Name>
      <sld:Title>Interstate &lt; 1:18K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>sld_type</ogc:PropertyName>
          <ogc:Literal>interstate</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:MaxScaleDenominator>18000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#404040</sld:CssParameter>
          <sld:CssParameter name="stroke-width">6</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>namelow</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">Serif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </sld:AnchorPointX>
              <sld:AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </sld:AnchorPointY>
            </sld:AnchorPoint>
            <sld:Rotation>
              <ogc:Literal>0</ogc:Literal>
            </sld:Rotation>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Fill>
          <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="spaceAround">150</sld:VendorOption>
        <sld:VendorOption name="group">no</sld:VendorOption>
        <sld:Priority>
          <ogc:Literal>30000</ogc:Literal>
        </sld:Priority>
        <sld:Graphic>
          <sld:ExternalGraphic>
            <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="interstate_524.png"/>
            <sld:Format>image/png</sld:Format>
          </sld:ExternalGraphic>
          <sld:Size>
            <ogc:Literal>24</ogc:Literal>
          </sld:Size>
        </sld:Graphic>
      </sld:TextSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>
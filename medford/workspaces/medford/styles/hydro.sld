<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>medford_hydro</sld:Name>
  <sld:Title>Medford, OR - Hydro</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:Name>large-streams-zoom1</sld:Name>
      <sld:Title>Large Streams 280K-140K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>STREAM</ogc:PropertyName>
          <ogc:Literal>Bear</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>140000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>280000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>large-streams-zoom2</sld:Name>
      <sld:Title>Large Streams 140K-70K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>STREAM</ogc:PropertyName>
          <ogc:Literal>Bear</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>70000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>140000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>large-streams-zoom2</sld:Name>
      <sld:Title>Large Streams 70K-35K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>STREAM</ogc:PropertyName>
          <ogc:Literal>Bear</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>small-streams-zoom2</sld:Name>
      <sld:Title>Small Streams 70K-35K</sld:Title>
      <ogc:Filter>
        <ogc:Not>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>STREAM</ogc:PropertyName>
            <ogc:Literal>Bear</ogc:Literal>
          </ogc:PropertyIsLike>
        </ogc:Not>
      </ogc:Filter>
      <sld:MinScaleDenominator>35000.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>70000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>large-streams-zoom3</sld:Name>
      <sld:Title>Large Streams 35K-17.5K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>STREAM</ogc:PropertyName>
          <ogc:Literal>Bear</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MinScaleDenominator>17500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>STREAM_NAM</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">italic</sld:CssParameter>
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
            <ogc:Literal>2</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.65</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>small-streams-zoom2</sld:Name>
      <sld:Title>Small Streams 35K-17.5K</sld:Title>
      <ogc:Filter>
        <ogc:Not>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>STREAM</ogc:PropertyName>
            <ogc:Literal>Bear</ogc:Literal>
          </ogc:PropertyIsLike>
        </ogc:Not>
      </ogc:Filter>
      <sld:MinScaleDenominator>17500.0</sld:MinScaleDenominator>
      <sld:MaxScaleDenominator>35000.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>large-streams-zoom3</sld:Name>
      <sld:Title>Large Streams &lt; 17.5K</sld:Title>
      <ogc:Filter>
        <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
          <ogc:PropertyName>STREAM</ogc:PropertyName>
          <ogc:Literal>Bear</ogc:Literal>
        </ogc:PropertyIsLike>
      </ogc:Filter>
      <sld:MaxScaleDenominator>17500.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>STREAM_NAM</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">11</sld:CssParameter>
          <sld:CssParameter name="font-style">italic</sld:CssParameter>
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
            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.65</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Name>small-streams-zoom2</sld:Name>
      <sld:Title>Small Streams &lt; 17.5K</sld:Title>
      <ogc:Filter>
        <ogc:Not>
          <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>STREAM</ogc:PropertyName>
            <ogc:Literal>Bear</ogc:Literal>
          </ogc:PropertyIsLike>
        </ogc:Not>
      </ogc:Filter>
      <sld:MaxScaleDenominator>17500.0</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#3182BD</sld:CssParameter>
          <sld:CssParameter name="stroke-width">2.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>STREAM_NAM</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
          <sld:CssParameter name="font-size">10</sld:CssParameter>
          <sld:CssParameter name="font-style">italic</sld:CssParameter>
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
            <ogc:Literal>2</ogc:Literal>
          </sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">.65</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:VendorOption name="labelAllGroup">true</sld:VendorOption>
        <sld:VendorOption name="followLine">true</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
        <sld:VendorOption name="maxDisplacement">50</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>

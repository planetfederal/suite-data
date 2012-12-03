<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:sld="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- a named layer is the basic building block of an sld document -->

  <NamedLayer>
    <Name>World Boundaries</Name>
    <UserStyle>

   <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:Rule>
      <sld:MinScaleDenominator>20000000.0</sld:MinScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#F1EEE8</sld:CssParameter>
        </sld:Fill>
        <!--sld:Stroke>
           <sld:CssParameter name="stroke">#808080</sld:CssParameter>
        </sld:Stroke-->
      </sld:PolygonSymbolizer>
      <sld:TextSymbolizer>
        <sld:Label>
          <ogc:PropertyName>CNTRY_NAME</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">Lucida Sans</sld:CssParameter>
          <sld:CssParameter name="font-size">10.0</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>0.5</sld:AnchorPointX>
              <sld:AnchorPointY>0.5</sld:AnchorPointY>
            </sld:AnchorPoint>
          </sld:PointPlacement>
        </sld:LabelPlacement>
        <sld:Halo>
          <sld:Radius>1</sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#000000</sld:CssParameter>
        </sld:Fill>
        <sld:VendorOption name="group">True</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:MaxScaleDenominator>20000000.0</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Fill>
          <sld:CssParameter name="fill">#F1EEE8</sld:CssParameter>
        </sld:Fill>
        <!--sld:Stroke>
           <sld:CssParameter name="stroke">#808080</sld:CssParameter>
        </sld:Stroke-->

      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
    
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

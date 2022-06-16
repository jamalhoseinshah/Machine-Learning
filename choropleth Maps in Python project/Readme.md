### choropleth Maps in Python

A Choropleth Map is a map composed of colored polygons. It is used to represent spatial variations of a quantity. This page documents how to build outline choropleth maps, but you can also build choropleth tile maps using our Mapbox trace types.

Below we show how to create Choropleth Maps using either Plotly Express' px.choropleth function or the lower-level go.Choropleth graph object.
Base Map Configuration

Plotly figures made with Plotly Express px.scatter_geo, px.line_geo or px.choropleth functions or containing go.Choropleth or go.Scattergeo graph objects have a go.layout.Geo object which can be used to control the appearance of the base map onto which data is plotted.

Introduction: main parameters for choropleth outline maps

Making choropleth maps requires two main types of input:

Geometry information:
This can either be a supplied GeoJSON file where each feature has either an id field or some identifying value in properties; or
one of the built-in geometries within plotly: US states and world countries (see below)


### A list of values indexed by feature identifier.

The GeoJSON data is passed to the geojson argument, and the data is passed into the color argument of px.choropleth (z if using graph_objects), in the same order as the IDs are passed into the location argument.

Note the geojson attribute can also be the URL to a GeoJSON file, which can speed up map rendering in certain cases.
Choropleth Map with plotly.express

Plotly Express is the easy-to-use, high-level interface to Plotly, which operates on a variety of types of data and produces easy-to-style figures.
GeoJSON with feature.id

Here we load a GeoJSON file containing the geometry information for US counties, where feature.id is a FIPS code.

![newplot](https://user-images.githubusercontent.com/95676591/174049078-a05090f6-5915-4574-a2a9-b6ca725944ad.png)
![newplot(1)](https://user-images.githubusercontent.com/95676591/174049089-7a9478dc-8bff-4fc0-92d5-df05e63d9d6b.png)
![newplot(2)](https://user-images.githubusercontent.com/95676591/174049091-9d8b7022-dffc-43c2-b580-4b9ef873caa8.png)
![newplot(3)](https://user-images.githubusercontent.com/95676591/174049094-88477e11-0d9f-48ca-a9b2-ac237111189e.png)
![newplot(4)](https://user-images.githubusercontent.com/95676591/174049097-858695ff-fa9e-45c7-a7d2-d54fa320b18c.png)
![newplot(5)](https://user-images.githubusercontent.com/95676591/174049102-0fdbc944-eb0b-4692-8e4b-dff0d30634f0.png)
![newplot(6)](https://user-images.githubusercontent.com/95676591/174049104-cc13c8a9-57f4-4ed3-b3ba-be1e616d90c5.png)
![newplot(7)](https://user-images.githubusercontent.com/95676591/174049106-3ccfc25e-4fcc-4cf8-bb88-ee8187d787e4.png)

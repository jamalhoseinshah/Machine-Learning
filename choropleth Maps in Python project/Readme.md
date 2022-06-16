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

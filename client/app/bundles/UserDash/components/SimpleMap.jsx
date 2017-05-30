import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import PropTypes from 'prop-types';
import MyGreatPlace from './my_great_place.jsx';
import shouldPureComponentUpdate from 'react-pure-render/function';
import drop_ins from './drop_ins.js';
import shelters from './shelters.js';
import water from './water.js';
import youth from './youth.js';
import controllable from 'react-controllables';
import MarkerExample, {K_SCALE_NORMAL} from './marker_example.jsx';
import {getScale, getRealFromTo} from './calc_markers_visibility.js';
import markerDescriptions from './marker_descriptions.js';
import {customDistanceToMouse} from './custom_distance.js';
import Svg from './svg.jsx'

import {List} from 'immutable';
//import MarkerExample, {K_SCALE_NORMAL} from './marker_example.jsx';
 

export default class SimpleMap extends Component {
static propTypes = {
    center: PropTypes.array,
    zoom: PropTypes.number,
    greatPlaceCoords: PropTypes.any
  };


  static defaultProps = {
    center: {lat: 43.6532, lng: -79.3832},
    zoom: 11,
    greatPlaceCoords: {lat: 43.9532, lng: -79.9832},
style: {
      width: 80,
      height: 80,
      margin: 0,
      padding: 0,
    },
    bootstrapURLKeys: {
    key: "AIzaSyCfqsqs1OAXX_C1F3iBkVxspWpiDObrx24",
    language: 'en',
  }
  };


  shouldComponentUpdate = shouldPureComponentUpdate;


constructor(props) {
    super(props);
  }

  render() {
    return (
      <GoogleMapReact style={this.props.style}
      onGoogleApiLoaded={({map, maps}) => {
          drop_ins.features.map((data) => {
            const infowindow = new maps.InfoWindow({
              content: '<div>' + data.properties.Address + '<br />' + data.properties.NAME + '</div>'
            });
            const marker = new maps.Marker({
              map: map,
              draggable: true,
              animation: maps.Animation.DROP,
              position: {
                lat: data.geometry.coordinates[1],
                lng: data.geometry.coordinates[0]
              }
            });
            marker.addListener('click', function() {
              infowindow.open(map, marker);
            });
          });
          water.features.map((data) => {
            const infowindow = new maps.InfoWindow({
              content: '<div>' + data.properties.Address + '<br />' + data.properties.NAME + '</div>'
            });
            const marker = new maps.Marker({
              map: map,
              draggable: true,
              animation: maps.Animation.DROP,
              position: {
                lat: data.geometry.coordinates[1],
                lng: data.geometry.coordinates[0]
              }
            });
            marker.addListener('click', function() {
              console.log(data.geometry.coordinates[1], data.geometry.coordinates[0]);
              infowindow.open(map, marker);
            });
          });
          shelters.features.map((data) => {
            const infowindow = new maps.InfoWindow({
              content: '<div>' + data.properties.ADDRESS_FU + '<br />' + data.properties.TYPE2 + '</div>'
            });
            const marker = new maps.Marker({
              map: map,
              draggable: true,
              animation: maps.Animation.DROP,
              position: {
                lat: data.geometry.coordinates[1],
                lng: data.geometry.coordinates[0]
              }
            });
            marker.addListener('click', function() {
              infowindow.open(map, marker);
            });
          });
          youth.features.map((data) => {
            const infowindow = new maps.InfoWindow({
              content: '<div>' + data.properties.AGENCY_NAM + '<br />' + data.properties.HOURS + '<br />' + data.properties.ACCESSIBIL + '</div>'
            });
            const marker = new maps.Marker({
              map: map,
              draggable: true,
              animation: maps.Animation.DROP,
              position: {
                lat: data.geometry.coordinates[1],
                lng: data.geometry.coordinates[0]
              }
            });
            marker.addListener('click', function() {
              infowindow.open(map, marker);
            });
          });
        }}
        defaultCenter={this.props.center}
        defaultZoom={this.props.zoom}
        bootstrapURLKeys={this.props.bootstrapURLKeys}>
        <MyGreatPlace lat={43.6532} lng={-79.3832} text={'A'} /* Kreyser Avrora */ />
        <MyGreatPlace {...this.props.greatPlaceCoords} text={'B'} /* road circle */ />
      </GoogleMapReact>
    );
  }
}
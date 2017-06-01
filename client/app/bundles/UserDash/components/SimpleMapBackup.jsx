import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import PropTypes from 'prop-types';
import MyGreatPlace from './my_great_place.jsx';
import shouldPureComponentUpdate from 'react-pure-render/function';
import drop_ins from './drop_ins.js';
import shelters from './shelters.js';
import water from './water.js';
import youth from './youth.js';
import List from './list.jsx';
//import MarkerExample, {K_SCALE_NORMAL} from './marker_example.jsx';
 

export default class SimpleMap extends Component  {
  constructor(props) {
    super(props);
    this.matchMarker = this.matchMarker.bind(this);
    this.state = {
      map: null,
      maps: null,
      markers: [],
      centerLng:-79.37840775,
      centerLat:43.66014526,
      zoom: 14
    }
  }

  matchMarker(lat, lng) {
    const matchMarker = this.state.markers.filter((marker) => {
      return marker.getPosition().lat() == lat;
    })
    if (matchMarker.length > 0) {
      this.setState({
        centerLng : matchMarker[0].getPosition().lng(),
        centerLng : matchMarker[0].getPosition().lat()
      });
      this.state.maps.event.trigger(matchMarker[0], "click");
    }
  }

  static defaultProps = {
    center: {lat: 43.6532, lng: -79.3832},
    zoom: 14,
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

  render() {
    var drops = [];
    return (
      <div>
        <div className="map-wrp">
          <GoogleMapReact bootstrapURLKeys={{
            key: 'AIzaSyDFeKjIbY0DFXhuE_iRx0rAGTOTUPjcXFs'
          }} onGoogleApiLoaded={({map, maps}) => {
            drop_ins.features.map((data) => {
              const infowindow = new maps.InfoWindow({
                content: '<div>' + data.properties.NAME + '<br />' + data.properties.Address + '</div>'
              });
              var image = 'https://chart.googleapis.com/chart?chst=d_map_pin_icon&chld=glyphish_house|FFFFFF|000000'
              const marker = new maps.Marker({
                icon: image,
                map: map,
                draggable: false,
                animation: maps.Animation.DROP,
                position: {
                  lat: data.geometry.coordinates[1],
                  lng: data.geometry.coordinates[0]
                }
              });
              marker.addListener('click', function() {
                
                if (infowindow) {
                    infowindow.close(marker);
                }
                infowindow.open(map, marker);
                if (marker.getAnimation() !== null) {
                  marker.setAnimation(null);
                } else {
                  marker.setAnimation(maps.Animation.BOUNCE);
                }
              });
              marker.set("id", data.properties.OBJECTID);
              drops.push(marker);
            });
            water.features.map((data) => {
              const infowindow = new maps.InfoWindow({
                content: '<div>' + data.properties.ASSET_TYPE + '<br />' + data.properties.ASSET_NAME + '</div>'
              });
              const marker = new maps.Marker({
                map: map,
                draggable: false,
                animation: maps.Animation.DROP,
                position: {
                  lat: data.geometry.coordinates[1],
                  lng: data.geometry.coordinates[0]
                }
              });
              marker.addListener('click', function() {
                if (infowindow) {
                    infowindow.close(marker);
                }
                if (marker.getAnimation() !== null) {
                  marker.setAnimation(null);
                } else {
                  marker.setAnimation(maps.Animation.BOUNCE);
                }
                infowindow.open(map, marker);
              });
              marker.set("id", data.properties.OBJECTID);
              drops.push(marker);
            });
            shelters.features.map((data) => {
              const infowindow = new maps.InfoWindow({
                content: '<div>' + data.properties.ADDRESS_FU + '<br />' + data.properties.TYPE2 + '</div>'
              });
              var image = 'https://chart.googleapis.com/chart?chst=d_map_pin_icon&chld=home|FFFFFF|000000'
              const marker = new maps.Marker({
                map: map,
                icon: image,
                draggable: false,
                animation: maps.Animation.DROP,
                position: {
                  lat: data.geometry.coordinates[1],
                  lng: data.geometry.coordinates[0]
                }
              });
              marker.addListener('click', function() {
                if (infowindow) {
                    infowindow.close(marker);
                }
                if (marker.getAnimation() !== null) {
                  marker.setAnimation(null);
                } else {
                  marker.setAnimation(maps.Animation.BOUNCE);
                }
                infowindow.open(map, marker);
              });
              marker.set("id", data.properties.OBJECTID);
              drops.push(marker);
            });
            youth.features.map((data) => {
              const infowindow = new maps.InfoWindow({
                content: '<div>' + data.properties.AGENCY_NAM + '<br />' + data.properties.HOURS + '<br />' + data.properties.ACCESSIBIL + '</div>'
              });
              var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
              const marker = new maps.Marker({
                map: map,
                icon: image,
                draggable: false,
                animation: maps.Animation.DROP,
                position: {
                  lat: data.geometry.coordinates[1],
                  lng: data.geometry.coordinates[0]
                }
              });
              marker.addListener('click', function() {
                if (infowindow) {
                    infowindow.close(map, marker);
                }
                if (marker.getAnimation() !== null) {
                  marker.setAnimation(null);
                } else {
                  marker.setAnimation(maps.Animation.BOUNCE);
                }
                infowindow.open(map, marker);
              });
              drops.push(marker);
            });
            this.setState({map: map, maps: maps, markers: drops});
          }} defaultCenter={{
            lat: this.state.centerLat,
            lng: this.state.centerLng
          }} defaultZoom={16}></GoogleMapReact>
        </div>
        <List drop={drop_ins.features} water={water.features} shelters={shelters.features} youth={youth.features} matchMarker={this.matchMarker}/>
      </div>
    );
  }
}
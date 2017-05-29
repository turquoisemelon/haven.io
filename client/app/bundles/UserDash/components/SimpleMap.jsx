import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import PropTypes from 'prop-types';
import MyGreatPlace from './my_great_place.jsx';
import shouldPureComponentUpdate from 'react-pure-render/function';

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
        defaultCenter={this.props.center}
        defaultZoom={this.props.zoom}
        bootstrapURLKeys={this.props.bootstrapURLKeys}>
        <MyGreatPlace lat={43.6532} lng={-79.3832} text={'A'} /* Kreyser Avrora */ />
        <MyGreatPlace {...this.props.greatPlaceCoords} text={'B'} /* road circle */ />
      </GoogleMapReact>
    );
  }
}
export class Map extends React.Component {
componentDidUpdate(prevProps, prevState) {
    if (prevProps.google !== this.props.google) {
      this.loadMap();
}
}

componentDidMount() {
    this.loadMap();
  }

loadMap() {// only called after there is a DOM component on the page 
    if (this.props && this.props.google) {
      // google is available
      const {google} = this.props;
      const maps = google.maps;

      const mapRef = this.refs.map;
      const node = ReactDOM.findDOMNode(mapRef); //grabs a reference to the DOM component where we want the map to be placed, namely the rend method where the div with ref='map' should be
     
     let zoom = 14; // variables instantating map
      let lat = 37.774929;
      let lng = -122.419416;
      const center = new maps.LatLng(lat, lng);
      const mapConfig = Object.assign({}, {
        center: center,
        zoom: zoom
      })
      this.map = new maps.Map(node, mapConfig);
    }

    }
    }

  render() {
    return (
      <div ref='map'>
        Loading map...
      </div>
    )
  }
}

// As we're wrapping our main component inside the Google api component wrapper, 
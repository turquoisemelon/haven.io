import PropTypes from 'prop-types';
import React from 'react';

export class UserDash extends React.Component {

static propTypes = {
    name: PropTypes.string.isRequired,
    user_id: PropTypes.number.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */
  constructor(props, _railsContext) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { name: this.props.name,
                    currentUserId: this.props.user_id,
                    user_profile: [{profession:''}]
                  };
  }






componentDidUpdate(prevProps, prevState) {
    if (prevProps.google !== this.props.google) {
      this.loadMap();
}
}

renderChildren() {
    const {children} = this.props;

    if (!children) return;
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


  render() {
    return (
      <div ref='map'>
        Loading map...
      </div>
    )
  }
}

export class Container extends React.Component {
  render() {
    if (!this.props.loaded) {
      return <div>Loading...</div>
    }

    const style = {
      width: '100vw',
      height: '100vh'
    }
    
    return (
      <div style={style}>
        <Map google={this.props.google} zoom={14}/>
      </div>
    )
  }
}

  

// As we're wrapping our main component inside the Google api component wrapper, 
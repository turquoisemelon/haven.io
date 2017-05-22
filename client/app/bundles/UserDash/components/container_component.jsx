import React from 'react'
import PropTypes from 'prop-types'
import ReactDOM from 'react-dom'
import {Link} from 'react-router'
import GitHubForkRibbon from 'react-github-fork-ribbon'

let GoogleApiWrapper;
if (__IS_DEV__) {
  GoogleApiWrapper = require('../src/index').GoogleApiWrapper
} else {
  GoogleApiWrapper = require('../dist').GoogleApiWrapper
}

import styles from './styles.module.css'

export class Container extends React.Component {
  render() {
    if (!this.props.loaded) {
      return <div>Loading...</div>
    }

    const style = {position: 'absolute',
    width: '100%',
    height: '100%'
    }
    
    return (
      <div style={style}>
        <Map google={this.props.google}/>
      </div>
    )
  }
}

export default GoogleApiComponent({
  apiKey: __GAPI_KEY__
})(Container)
import React from 'react';

export default class User extends React.Component {
  render () {
    return(
      <div className="user">
        <ul>
          <li className="username">{this.props.name}</li>
        </ul>
      </div>
    )
  }
}

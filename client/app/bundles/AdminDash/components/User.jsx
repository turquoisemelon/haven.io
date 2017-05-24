import React from 'react';

export default class User extends React.Component {
  render () {
    return(
      <div className="user">
        <ul>
          <li className="username">{this.props.name}</li>
          <li className="gender">{this.props.gender}</li>
        </ul>
      </div>
    )
  }
}

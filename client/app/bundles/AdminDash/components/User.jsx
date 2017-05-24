import React from 'react';

export default class User extends React.Component {
  render () {
    return(
      <div className="user" onClick={() => {this.props.updateCurrentUser(this.props.user.id)}}>
        <ul>
          <li className="username">{this.props.user.name}</li>
          <li className="gender">{this.props.user.gender}</li>
        </ul>
      </div>
    )
  }
}

import React from 'react';

export default class User extends React.Component {

  render () {
    let elementClass;
    if (this.props.selectedUser == this.props.user.id){
      elementClass = 'collection-item user active';
    } else {
      elementClass = 'collection-item user';
    }
    return(
      <a href="#!" className={elementClass} onClick={() => {this.props.clickHandler(this.props.user.id)}}>
        <span className="username">{this.props.user.name}</span>
        <span className="gender">{this.props.user.gender}</span>
      </a>
    )
  }
}


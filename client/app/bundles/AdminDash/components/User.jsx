import React from 'react';

export default class User extends React.Component {
  constructor(props) {
    super(props);

    this.state = {clicked: 'collection-item user'};
  }

  onClick = ()=>{
    this.setState({clicked: 'collection-item user active'});
    this.props.clickHandler(this.props.user.id)
  }

  render () {
    return(
      <a href="#!" className={this.state.clicked} onClick={this.onClick}>
          <span className="username">{this.props.user.name}</span>
          <span className="gender">{this.props.user.gender}</span>
      </a>
    )
  }

}


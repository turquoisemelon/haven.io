import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx';
import UserPie from './UserPie.jsx'
import AgePie from './AgePie.jsx'
import RadarPie from './RadarPie.jsx'

export default class LeftLayout extends React.Component {
  constructor(props) {
    super(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = {currentUserId: this.props.user_id};
  }

  updateCurrentUser = (id) => {
    this.setState({currentUserId: id})
    console.log(id)
  }

   render() {
     return(
       <div>
       <AgePie currentUserId={this.state.currentUserId}/>
        <RadarPie currentUserId={this.state.currentUserId} />
        <UserList updateCurrentUser={this.updateCurrentUser}/>
       </div>
     );
   }
}
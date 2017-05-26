import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx';
import RadarPie from './RadarPie.jsx'


export default class LeftLayout extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      currentUserId: this.props.currentUserId
    };
  }

  updateSelected = (id) => {
    this.setState({currentUserId: id
    });

  }

   render() {
     return(
       <div className="col s2">
        <p>{this.state.currentUserId}</p>
        <RadarPie currentUserId={this.state.currentUserId}/>
        <UserList updateSelected={this.updateSelected}/>
       </div>
     );
   }
}
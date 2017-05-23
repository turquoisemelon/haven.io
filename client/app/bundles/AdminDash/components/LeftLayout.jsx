import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx'
import RadarChart from './RadarChart.jsx'

export default class AdminDash extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired,
    user_id: PropTypes.number.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */

   constructor(props, _railsContext){
     super(props);

     this.state = { name: this.props.name,
                    currentUserId: this.props.user_id,
                    age: this.props.age
     }
   }
   render() {
     return()
   }




}

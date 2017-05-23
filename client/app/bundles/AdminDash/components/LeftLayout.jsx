import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx'
import RadarChart from './RadarChart.jsx'

const data = [
  currentUser: user_id,
  users: {name: 'Bob', gender:'male'},
          {name: 'Andrew', gender:'male'},
          {name: 'Meltem', gender:'female'},
          {name: 'Kiwi', gender:'male'},
          {name: 'Jerry', gender:'male'},
          {name: 'Jenny', gender:'female'},
          {name: 'Catherine', gender: 'female'}
  ];

export default class LeftLayout extends React.Component {
  // static propTypes = {
  //   name: PropTypes.string.isRequired,
  //   user_id: PropTypes.number.isRequired, // this is passed from the Rails view
  // };

  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */

   constructor(props, _railsContext){
     super(props);

     this.state = data
   }

   componentDidMount() {
    this.setState({users: this.state.users})

   }

   render() {
     return(
       <div>
         <UserList users={this.state.users}/>
         <RadarChart/>
       </div>
     );
   }


}

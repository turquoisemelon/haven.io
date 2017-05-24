import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx';
import RadarChart from './RadarChart.jsx';


export default class LeftLayout extends React.Component {

   render() {
     return(
       <div>
         <UserList/>
         <RadarChart/>
       </div>
     );
   }


}

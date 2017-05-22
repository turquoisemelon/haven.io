import PropTypes from 'prop-types';
import React from 'react';
import {PieChart, Pie, Legend, Tooltip} from 'recharts'

const data02 = [{name: 'Group A', value: 2400}, {name: 'Group B', value: 4567},
                {name: 'Group C', value: 1398}, {name: 'Group D', value: 9800},
                {name: 'Group E', value: 3908}, {name: 'Group F', value: 4800}];

export default class UserPie extends React.Component{
  render(){
    return(
      <PieChart width={300} height={300}>
        <Pie data={data02} cx={150} cy={150} innerRadius={40} outerRadius={80} fill="#82ca9d"/>
        <Tooltip/>
       </PieChart>
    )
  }
}
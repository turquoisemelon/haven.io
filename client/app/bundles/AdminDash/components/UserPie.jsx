import React from 'react';
import {PieChart, Pie, Legend, Tooltip} from 'recharts'

const data02 = [{name: 'Plumbers', value: 2400}, {name: 'HIV Positive', value: 4567},
                {name: 'Single', value: 1398}, {name: 'Veteran', value: 9800},
                {name: 'Married', value: 3908}, {name: 'LGBT', value: 4800}];

export default class UserPie extends React.Component{
  render(){
    return(
      <PieChart width={300} height={300}>
        <Pie data={data02} cx={150} cy={150} innerRadius={40} outerRadius={80} fill="#82ca9d" label/>
        <Tooltip/>
       </PieChart>
    )
  }
}
import React from 'react';
import {RadialBarChart, RadialBar, Legend, Tooltip} from 'recharts'

const data = [
  {name: '18-24', uv: 10, pv: 50, fill: '#8884d8'},
  {name: '25-29', uv: 3, pv: 10, fill: '#83a6ed'},
  {name: '30-34', uv: 5, pv: 5, fill: '#8dd1e1'},
  {name: '35-39', uv: 5, pv: 22, fill: '#82ca9d'},
  {name: '40-49', uv: 5, pv: 1, fill: '#a4de6c'},
  {name: '50+', uv: 5, pv: 6, fill: '#d0ed57'},
  {name: 'unknow', uv: 5, pv: 12, fill: '#ffc658'}
];

const style = {
  top: 0,
  left: 350,
  lineHeight: '24px'
};

export default class AgePie extends React.Component{
  render(){
    return(
      <RadialBarChart width={500} height={300} cx={150} cy={150} innerRadius={30} outerRadius={140} barSize={10} data={data}>
      <RadialBar minAngle={0} background clockWise={true} dataKey='uv'/>
      <Legend iconSize={10} width={120} height={140} layout='vertical' verticalAlign='middle' wrapperStyle={style}/>
      <Tooltip/>
      </RadialBarChart>
    )
  }
}
import PropTypes from 'prop-types';
import React from 'react';
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend} from 'recharts';

const data = [
      {date: 'Page A', a: 4000, b: 2400},
      {date: 'Page B', a: 3000, b: 1398},
      {date: 'Page C', a: 2000, b: 9800},
      {date: 'Page D', a: 2780, b: 3908},
      {date: 'Page E', a: 1890, b: 4800},
      {date: 'Page F', a: 2390, b: 3800},
      {date: 'Page G', a: 3490, b: 4300}
];

export default class TimeSeries extends React.Component {

  constructor(props){
    super(props);
    this.state ={
      show: [
        'meetings',
        'arrested',
        'medicated',
        'indoors',
        'bathed',
        'drugs',
        'fights',
        'sentiment'
      ]
      data: []
    }
  }

  getData = (length) => {
    if (length === 'week'){
      const request = new Request(`http://localhost:3000/api/users/breakdown?q=${param}`, {
        method: 'GET',
        credentials: 'same-origin',
        header: {'Content-Type': 'application/json'},
      })
      fetch(request)
      .then((res)=> res.json())
      .then(data =>{
        this.handleResponse(data);
      });
    } else {
      const request = new Request(`http://localhost:3000/api/users/breakdown?q=${param}`, {
        method: 'GET',
        credentials: 'same-origin',
        header: {'Content-Type': 'application/json'},
      })
      fetch(request)
      .then((res)=> res.json())
      .then(data =>{
        this.handleResponse(data);
      });
    }
  }


  render () {
    return (
      <LineChart width={600} height={300} data={data}
            margin={{top: 5, right: 30, left: 20, bottom: 5}}>
       <XAxis dataKey="date"/>
       <YAxis/>
       <CartesianGrid strokeDasharray="3 3"/>
       <Tooltip/>
       <Legend />
       <Line type="monotone" dataKey="a" stroke="#8884d8" activeDot={{r: 6}}/>
      </LineChart>
    );
  }
}
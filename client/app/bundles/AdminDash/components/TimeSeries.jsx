import PropTypes from 'prop-types';
import React from 'react';
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend} from 'recharts';

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
      ],
      data: []
    }
  }

  getData = (length) => {
    if (length === 'week'){
      const request = new Request(`http://localhost:3000/api/reports/time?q=${length}`, {
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
      const request = new Request(`http://localhost:3000/api/reports/time?q=${length}`, {
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

  handleResponse = (data) => {
    let new_state = [];
    data.forEach((day)=>{
      new_state.push({
        date: day.date,
        meetings: day.meetings_count,
        arrested: day.arrested_count,
        medicated: day.medicated_count,
        indoors: day.indoors_count,
        bathed: day.bathed_count,
        drugs: day.drugs_count,
        fights: day.fights_count,
        sentiment: day.sentiment_average
      })
    });
    this.setState({data: new_state});
  }

  render () {
    return (
      <div>
        <LineChart width={800} height={500} data={this.state.data}
              margin={{top: 5, right: 30, left: 20, bottom: 5}}>
         <XAxis dataKey="date"/>
         <YAxis/>
         <CartesianGrid strokeDasharray="3 3"/>
         <Tooltip/>
         <Legend />
         <Line type="monotone" dataKey="meetings" stroke="#8884d8" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="arrested" stroke="#cadbdc" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="medicated" stroke="#10adbc" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="indoors" stroke="#fba188" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="bathed" stroke="#cbd536" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="drugs" stroke="#6ba9dd" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="fights" stroke="#ff9ea3" activeDot={{r: 6}}/>
         <Line type="monotone" dataKey="sentiment" stroke="#e187ff" activeDot={{r: 6}}/>
        </LineChart>
        <button onClick={()=>this.getData('week')}>week</button>
        <button onClick={()=>this.getData('month')}>month</button>
      </div>
    );
  }
}
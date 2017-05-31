import React from 'react';
import {PieChart, Pie, Legend, Tooltip} from 'recharts'

export default class UserPie extends React.Component{

  constructor(props){
    super(props);
    this.state ={
      intervalId: '',
      data: [
        {name: 'Total', value: 60},
      ]
    }
  }

  breakdown = (param) => {
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

  handleResponse = (data) => {
    let new_state = [];
    for(let key in data){
      new_state.push({name: key, value: data[key]})
    };
    this.setState({data: new_state});
  }

  handleClick = (filter) => {
    // this.clear();
    this.breakdown(filter);
    // this.poll = setInterval(()=>{
    //   this.setState({intervalId: this.poll});
    //   this.breakdown(filter);
    //   }, 3000)
  }

  clear = () => {clearInterval(this.state.intervalId)}

  render(){
    return(
      <div className="col s12">
      <p>User Background</p>
        <PieChart width={300} height={245}>
          <Pie data={this.state.data} cx={150} cy={122} innerRadius={50} outerRadius={90} fill="#82ca9d" label/>
          <Tooltip/>
        </PieChart>
        <div className="buttons">
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('profession')}>Profession</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('immigrant')}>Immigration Status</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('gender')}>Gender</button>
          <button className="waves-effect waves-light btn" onClick={()=>this.handleClick('ms')}>Marital Status</button>
        </div>
      </div>
    )
  }
}
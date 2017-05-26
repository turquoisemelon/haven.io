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
        <PieChart width={300} height={300}>
          <Pie data={this.state.data} cx={150} cy={150} innerRadius={40} outerRadius={80} fill="#8884d8" label/>
          <Tooltip/>
        </PieChart>
        <span>
          <button onClick={()=>this.handleClick('profession')}>Previous Profession</button>
          <button onClick={()=>this.handleClick('immigrant')}>Immigration Status</button>
          <button onClick={()=>this.handleClick('gender')}>Gender</button>
          <button onClick={()=>this.handleClick('ms')}>Marital Status</button>
        </span>
      </div>
    )
  }
}
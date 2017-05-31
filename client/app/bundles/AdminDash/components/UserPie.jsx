import React from 'react';
import {PieChart, Pie, Legend, Tooltip} from 'recharts'

export default class UserPie extends React.Component{

  constructor(props){
    super(props);
    this.state ={
      intervalId: '',
      data: [
        {name: 'Total', value: 60, fill: '#d0ed57'},
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
    function newColor(){
    var letters = 'ABCDE'.split('');
    var color = '#';
    for (var i=0; i<3; i++ ) {
        color += letters[Math.floor(Math.random() * letters.length)];
    }
    return color;
}
    let new_state = [];
    for(let key in data){
      new_state.push({name: key, value: data[key], label: key, fill: newColor()})
    };
    this.setState({data: new_state});
    console.log(new_state)
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
                    Client Background
        <PieChart width={300} height={220}>
          <Pie data={this.state.data} cx={150} cy={90} innerRadius={50} outerRadius={90} label={this.state.data.name} fill/>
          <Tooltip data={this.state.data.name}/>
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
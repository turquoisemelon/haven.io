import React from 'react';
import {RadialBarChart, RadialBar, Legend, Tooltip} from 'recharts'


const style = {
  top: 0,
  left: 350,
  lineHeight: '25px'
};

//uncomment code to turn on polling
export default class AgePie extends React.Component{

  constructor(props){
    super(props);
    this.state ={
      intervalId: '',
      data: [
              {name: '0-19', uv: 0, fill: '#8884d8'},
              {name: '20-29', uv: 0, fill: '#83a6ed'},
              {name: '30-39', uv: 0, fill: '#8dd1e1'},
              {name: '40-49', uv: 0, fill: '#82ca9d'},
              {name: '50-59', uv: 0, fill: '#a4de6c'},
              {name: '60+', uv: 0, fill: '#d0ed57'}
            ]
    }
  }

  handleClick = (filter) => {
    // this.clear();
    this.pullUsers(filter);
    // this.poll = setInterval(()=>{
    //   this.setState({intervalId: this.poll});
    //   this.pullUsers(filter);
    //   }, 1000)
  }

  clear = () => {clearInterval(this.state.intervalId)}

  pullUsers = (param) => {
      const request = new Request(`http://localhost:3000/api/users/age?q=${param}`, {
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
    const new_data = [
              {name: '0-19', uv: data['0-19'], fill: '#8884d8'},
              {name: '20-29', uv: data['20-29'], fill: '#83a6ed'},
              {name: '30-39', uv: data['30-39'], fill: '#8dd1e1'},
              {name: '40-49', uv: data['40-49'], fill: '#82ca9d'},
              {name: '50-59', uv: data['50-59'], fill: '#a4de6c'},
              {name: '60+', uv: data['60+'], fill: '#d0ed57'}
            ]
    this.setState({data: new_data});
  }

  componentDidMount() {
    this.pullUsers();
    // let poll = setInterval(()=>{
    //   this.pullUsers();
    //   this.setState({intervalId: poll});
    // }, 10000)
  }
  render(){
    return(
      <div className="col s5">
        <RadialBarChart width={350} height={175} cx={150} cy={150} innerRadius={20} outerRadius={100} barSize={10} data={this.state.data}>
          <RadialBar minAngle={0} background clockWise={true} dataKey='uv'/>
          <Legend iconSize={10} width={100} height={140} layout='vertical' verticalAlign='middle' wrapperStyle={style}/>
          <Tooltip/>
        </RadialBarChart>
        <button onClick={()=>this.handleClick('')}>All</button>
        <button onClick={()=>this.handleClick('hiv')}>HIV</button>
        <button onClick={()=>this.handleClick('male')}>Male</button>
        <button onClick={()=>this.handleClick('female')}>Female</button>
        <button onClick={()=>this.handleClick('veteran')}>Veteran</button>
      </div>
    )
  }
}
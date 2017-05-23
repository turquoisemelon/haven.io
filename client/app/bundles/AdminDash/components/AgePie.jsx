import React from 'react';
import {RadialBarChart, RadialBar, Legend, Tooltip} from 'recharts'


const style = {
  top: 0,
  left: 350,
  lineHeight: '24px'
};

export default class AgePie extends React.Component{

  pullUsers = () => {
    const request = new Request('http://localhost:3000/api/users/age', {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application/json'},
    })
    fetch(request)
    .then((res)=> res.json())
    .then(data =>{
      console.log(data);
      this.setState( {data0:data});
    });
  }

  constructor(props){
    super(props);
    this.state ={
      currentUserId: this.props.currentUserId,
      data: [
              {name: '18-24', uv: 10, fill: '#8884d8'},
              {name: '25-29', uv: 3, fill: '#83a6ed'},
              {name: '30-34', uv: 5, fill: '#8dd1e1'},
              {name: '35-39', uv: 5, fill: '#82ca9d'},
              {name: '40-49', uv: 5, fill: '#a4de6c'},
              {name: '50+', uv: 5, fill: '#d0ed57'}
            ],
      data0: ''
    }
  }


  componentDidMount() {
    this.pullUsers();
    // debugger;
    // console.log(a);
  }

  render(){
    return(
      <RadialBarChart width={500} height={300} cx={150} cy={150} innerRadius={30} outerRadius={140} barSize={10} data={this.state.data}>
        <RadialBar minAngle={0} background clockWise={true} dataKey='uv'/>
        <Legend iconSize={10} width={120} height={140} layout='vertical' verticalAlign='middle' wrapperStyle={style}/>
        <Tooltip/>
      </RadialBarChart>
    )
  }
}
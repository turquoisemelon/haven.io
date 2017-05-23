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
      this.handleResponse(data);
    });
  }

  constructor(props){
    super(props);
    this.state ={
      currentUserId: this.props.currentUserId,
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
    setTimeout(this.pullUsers, 2000);
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
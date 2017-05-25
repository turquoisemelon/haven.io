import React from 'react';
import {Radar, RadarChart, PolarGrid, Legend,
         PolarAngleAxis, PolarRadiusAxis} from 'recharts'

// const style = {
//   top: 0,
//   left: 350,
//   // lineHeight: '24px'
// };

export default class RadarPie extends React.Component{

pullReports = () => {
    const request = new Request(`http://localhost:3000/api/users/${this.props.currentUserId}/accuity`, { 
      // this.props.user.name
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application/json'},
    })
    fetch(request)
    .then((res)=> res.json())
    .then(data =>{
      this.handleResponse(data);
    });
    console.log(this.props.currentUserId);
  }


  handleClick = (user) => {
    // this.clear();
    this.pullReports(user);
    // this.poll = setInterval(()=>{
    //   this.setState({intervalId: this.poll});
    //   this.pullUsers(filter);
    //   }, 1000)
  }

constructor(props){
    super(props);
    this.state ={
     currentUserId: this.props.currentUserId,
      data: [
            { subject: 'Treatment Participation', A: 0, B: 5, fullMark: 5 },
            { subject: 'Crises Incidents', A: 0, B: 5, fullMark: 5 },
            { subject: 'Medicine Compliance', A: 0, B: 5, fullMark: 5 },
            { subject: 'Housing', A: 0, B: 5, fullMark: 5 },
            { subject: 'Meets basic needs', A: 0, B: 5, fullMark: 5 },
            { subject: 'Substance Abuse', A: 0, B: 5, fullMark: 5 },
            { subject: 'Danger to self', A: 0, B: 5, fullMark: 5 },
            { subject: 'Other Problems', A: 0, B: 5, fullMark: 5 },
            ]
    }
    console.log(this.props)
  }

  handleResponse = (data) => {
    const new_data = [
              {subject: 'Treatment Participation', A: data['Treatment Participation'] , B: 5, fullMark: 5},
              {subject: 'Crises Incidents', A: data['Crises Incidents'], B: 5, fullMark: 5},
              {subject: 'Medicine Compliance', A: data['Medicine Compliance'], B: 5, fullMark: 5},
              {subject: 'Housing', A: data['Housing'], B: 5, fullMark: 5},
              {subject: 'Meets basic needs', A: data['Meets basic needs'], B: 5, fullMark: 5},
              {subject: 'Substance Abuse', A: data['Substance Abuse'], B: 5, fullMark: 5},
              {subject: 'Danger to self', A: data['Danger to self'], B: 5, fullMark: 5},
              {subject: 'Other Problems', A: data['Treatment Participation'], B: 5, fullMark: 5 },
            ]
    this.setState({data: new_data});  
  }
//  or line 58 is  this.setState({subject: new_report}); 

  componentDidMount() {
    this.pullReports();
    // let poll = setInterval(()=>{
    //   this.pullReports();
    //   this.setState({intervalId: poll});
    // }, 10000)
  }
  
  render(){
    return(
      <div>
      <RadarChart cx={300} cy={250} outerRadius={150} width={600} height={500} data={this.state.data}>
          <Radar name="Radar" dataKey="A" stroke="#8884d8" fill="#8884d8" fillOpacity={0.6}/>
          <PolarGrid />
          <PolarAngleAxis dataKey="subject" />
          <PolarRadiusAxis/>
        </RadarChart>
        <button onClick={()=>this.handleClick('this.state.currentUserId')}>Generate Report</button>
        </div>
    )
  }
}
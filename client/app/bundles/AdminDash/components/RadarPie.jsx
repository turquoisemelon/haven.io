import React from 'react';
import {Radar, RadarChart, PolarGrid, Legend, PolarAngleAxis, PolarRadiusAxis} from 'recharts'

export default class RadarPie extends React.Component{

// pullReports = () => {
//     const request = new Request(`http://localhost:3000/api/users/${this.props.selectedUserId}/accuity`, {
//       method: 'GET',
//       credentials: 'same-origin',
//       header: {'Content-Type': 'application/json'},
//     })
//     fetch(request)
//     .then((res)=> res.json())
//     .then(data =>{
//       this.handleResponse(data);
//     });
//   }

// constructor(props){
//     super(props);
//     this.state ={
//       data: [
//             { subject: 'Treatment Participation', A: 0, fullMark: 5 },
//             { subject: 'Crises Incidents', A: 0, fullMark: 5 },
//             { subject: 'Medicine Compliance', A: 0, fullMark: 5 },
//             { subject: 'Housing', A: 0, fullMark: 5 },
//             { subject: 'Meets basic needs', A: 0, fullMark: 5 },
//             { subject: 'Substance Abuse', A: 0, fullMark: 5 },
//             { subject: 'Danger to self', A: 0, fullMark: 5 },
//             { subject: 'Other Problems', A: 0, fullMark: 5 },
//             ]
//     }

//     this.pullReports(this.props.selectedUserId);
//   }

  // handleResponse = (data) => {
  //   const new_data = [
  //             {subject: 'Treatment Participation', A: data['Treatment Participation'], fullMark: 5},
  //             {subject: 'Crises Incidents', A: data['Crises Incidents'], fullMark: 5},
  //             {subject: 'Medicine Compliance', A: data['Medicine Compliance'], fullMark: 5},
  //             {subject: 'Housing', A: data['Housing'], fullMark: 5},
  //             {subject: 'Meets basic needs', A: data['Meets basic needs'], fullMark: 5},
  //             {subject: 'Substance Abuse', A: data['Substance Abuse'], fullMark: 5},
  //             {subject: 'Danger to self', A: data['Danger to self'], fullMark: 5},
  //             {subject: 'Other Problems', A: data['Treatment Participation'], fullMark: 5 },
  //           ];
  //   this.setState({data: new_data});
  // }
  render(){
    return(
      <div>
        <RadarChart cx={125} cy={175} outerRadius={75} width={250} height={350} data={this.props.data}>
          <Radar name="Radar" dataKey="A" stroke="#8884d8" fill="#8884d8" fillOpacity={0.6}/>
          <PolarGrid />
          <PolarAngleAxis dataKey="subject" />
          <PolarRadiusAxis/>
        </RadarChart>
      </div>
    )
  }
}
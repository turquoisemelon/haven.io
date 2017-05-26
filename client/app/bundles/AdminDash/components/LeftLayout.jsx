import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx';
import RadarPie from './RadarPie.jsx'


export default class LeftLayout extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedUserId: '',
      radarData: [
        { subject: 'Treatment', A: 0, fullMark: 5 },
        { subject: 'Incidents', A: 0, fullMark: 5 },
        { subject: 'Compliance', A: 0, fullMark: 5 },
        { subject: 'Housing', A: 0, fullMark: 5 },
        { subject: 'Basic needs', A: 0, fullMark: 5 },
        { subject: 'Substance', A: 0, fullMark: 5 },
        { subject: 'Danger', A: 0, fullMark: 5 },
        { subject: 'Situational', A: 0, fullMark: 5 },
      ]
    };
  }

  updateSelected = (id) => {
    this.setState({selectedUserId: id});
    this.pullReports(id);
  }

  pullReports = (id) => {
    const request = new Request(`http://localhost:3000/api/users/${id}/accuity`, {
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
              {subject: 'Treatment', A: data['Treatment Participation'], fullMark: 5},
              {subject: 'Incidents', A: data['Crises Incidents'], fullMark: 5},
              {subject: 'Compliance', A: data['Medicine Compliance'], fullMark: 5},
              {subject: 'Housing', A: data['Housing'], fullMark: 5},
              {subject: 'Basic needs', A: data['Meets basic'], fullMark: 5},
              {subject: 'Substance', A: data['Substance Abuse'], fullMark: 5},
              {subject: 'Danger', A: data['Danger to self'], fullMark: 5},
              {subject: 'Situational', A: data['Treatment Participation'], fullMark: 5 },
            ];
    this.setState({radarData: new_data});
  }

   render() {
     return(
       <div>
       <p>Users</p>
        <UserList clickHandler={this.updateSelected}/>
        <RadarPie data={this.state.radarData}/>
       </div>
     );
   }
}
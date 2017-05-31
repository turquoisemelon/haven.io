import PropTypes from 'prop-types';
import React from 'react';
import UserList from './UserList.jsx';
import RadarPie from './RadarPie.jsx'
import UserProfile from './card.jsx'
import UserCount from './UserCount.jsx';


export default class LeftLayout extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedUserId: '',
      radarData: [
        { subject: 'Treatment', A: 2, fullMark: 5 },
        { subject: 'Incidents', A: 3, fullMark: 5 },
        { subject: 'Compliance', A: 4, fullMark: 5 },
        { subject: 'Housing', A: 1, fullMark: 5 },
        { subject: 'Basic needs', A: 4, fullMark: 5 },
        { subject: 'Substance', A: 2, fullMark: 5 },
        { subject: 'Danger', A: 1, fullMark: 5 },
        { subject: 'Situational', A: 3, fullMark: 5 },
      ],
      basicInfo: {
        name: "Tammy Geraldson",
        gender: "Female",
        age: "April 3, 1970",
        location: "Toronto, ON",
        photo: "https://pbs.twimg.com/profile_images/857413369850200065/KkKXIkze.jpg",
        bio: "Social Service worker since 1999.  BS University of Toronto",
      }
    };
  }

  updateSelected = (id) => {
    this.setState({selectedUserId: id});
    this.pullReports(id);
    this.getProfile(id);
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

  getProfile = (id) => {
    const requested = new Request(`http://localhost:3000/api/users/${id}/profile`, {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application/json'},
    })
    fetch(requested)
    .then((res)=> res.json())
    .then(lore =>{
      this.handleProfile(lore);
// console.log(lore);
    });
  }

  handleProfile = (lore) =>{
    const new_profile = {
      name: lore[0].name,
      gender: lore[0].gender,
      age: lore[0].age,
      location: "Toronto, ON",
      photo: "http://lorempixel.com/500/500/people",
      bio: "Never bruv."
    }
    this.setState({basicInfo: new_profile});
  }

  handleResponse = (data) => {
    const new_data = [
              {subject: 'Treatment', A: data['Treatment Participation'], fullMark: 3},
              {subject: 'Incidents', A: data['Crises Incidents'], fullMark: 3},
              {subject: 'Compliance', A: data['Medicine Compliance'], fullMark: 3},
              {subject: 'Housing', A: data['Housing'], fullMark: 3},
              {subject: 'Basic needs', A: data['Meets basic'], fullMark: 3},
              {subject: 'Substance', A: data['Substance Abuse'], fullMark: 3},
              {subject: 'Danger', A: data['Danger to self'], fullMark: 3},
              {subject: 'Situational', A: data['Other Problems'], fullMark: 3},
            ];
    this.setState({radarData: new_data});
  }

   render() {
     return(
       <div>
        <UserProfile data={this.state.basicInfo}/>
        <UserCount/>
        <UserList selectedUser={this.state.selectedUserId} clickHandler={this.updateSelected}/>
        <RadarPie data={this.state.radarData}/>
       </div>
     );
   }
}
import PropTypes from 'prop-types';
import React from 'react';
import UserPie from './UserPie.jsx'
import AgePie from './AgePie.jsx'
import LeftLayout from './LeftLayout.jsx'
  
export default class AdminDash extends React.Component {

  updateName = (name) => {
    this.setState({ name: name });
  };

  getName = () =>{
    const request = new Request(`http://localhost:3000/api/users/${this.state.currentUserId}`, {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application/json'},
    })
    fetch(request)
    .then((res)=> res.json())
    .then(data =>{
      this.setState({user_profile: [data]});
    });
  }


  render() {
    return (
      <div className="row">
        <div className="col s4">
          <LeftLayout/>
        </div>
        <div className="col s8">
        <div className="row filling"></div>
          <div className="row age-user-pie">
            <div className="col s6 agepie">
              <AgePie/>
            </div>
            <div className="col s5 userpie">
              <UserPie/>
            </div>
          </div>
          <div className="row">
            <div className="col s12">
              timeseries
            </div>
          </div>
        </div>
      </div>
    );
  }
}
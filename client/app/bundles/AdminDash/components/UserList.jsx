import React from 'react';
import User from './User.jsx';


export default class UserList extends React.Component {

    constructor(props) {
      super(props);
      // How to set initial state in ES6 class syntax
      // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
      this.state = {data: []};
  }

  pullUsers = (param) => {
    const request = new Request(`http://localhost:3000/api/users`, {
      method: 'GET',
      credentials: 'same-origin',
      header: {'Content-Type': 'application.json'},
    })
    fetch(request)
    .then((res) => res.json())
    .then(data => {this.handleResponse(data)})
  }

  handleResponse = (data) => {
    this.setState({data: data});
  }

  componentDidMount() {
    this.pullUsers();
  }

  render () {
    return(
      <div className="users">
        {
          this.state.data.map( user => {
            return <User key={user.id}
                        user={user}
                        updateCurrentUser={this.props.updateCurrentUser}/>
          })
        }

      </div>
    )
  }
}
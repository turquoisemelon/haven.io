import PropTypes from 'prop-types';
import React from 'react';
import UserPie from './UserPie.jsx'
import AgePie from './AgePie.jsx'
import LeftLayout from './LeftLayout.jsx'


export default class AdminDash extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired,
    user_id: PropTypes.number.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */
  constructor(props, _railsContext) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { name: this.props.name,
                    currentUserId: this.props.user_id,
                    user_profile: [{profession:''}]
                  };
  }

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
        {/*<h3>
          Hello, {this.state.name} User_id: {this.state.currentUserId}!
        </h3>
        <hr />
        <form >
          <label htmlFor="name">
            Say hello to:
          </label>
          <input
            id="name"
            type="text"
            value={this.state.name}
            onChange={(e) => this.updateName(e.target.value)}
          />
        </form>
        <button onClick={this.getName}>Current User</button>*/}
        <LeftLayout/>
        <UserPie/>
        <AgePie currentUserId={this.state.currentUserId}/>
      </div>
    );
  }
}
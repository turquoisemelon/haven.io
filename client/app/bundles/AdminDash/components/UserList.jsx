import React from 'react';
import User from './User.jsx';


const testData = [
          {name: 'Bob', gender:'male'},
          {name: 'Andrew', gender:'male'},
          {name: 'Meltem', gender:'female'},
          {name: 'Kiwi', gender:'male'},
          {name: 'Jerry', gender:'male'},
          {name: 'Jenny', gender:'female'},
          {name: 'Catherine', gender: 'female'}];


export default class UserList extends React.Component {
    constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = {testdata: testData};
  }

  render () {
    return(
      <div className="users">
        {
          this.state.testdata.map( user => {
            return <User key={user.id}
                        name={user.name}
                        gender={user.gender}/>
          })
        }
      </div>
    )
  }
}

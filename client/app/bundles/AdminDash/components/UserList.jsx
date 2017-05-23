import React from 'react';

const data = [
  {name: 'Bob', gender:'male'},
  {name: 'Andrew', gender:'male'},
  {name: 'Meltem', gender:'female'},
  {name: 'Kiwi', gender:'male'},
  {name: 'Jerry', gender:'male'},
  {name: 'Jenny', gender:'female'},
  {name: 'Catherine', gender: 'female'}
];

export default class UserList extends React.Component {
  render () {
    return(
      <div className="userList">
        {
          this.props.messages.map( message => {
            return <User/>
          })
        }
      </div>
    )
  }
}

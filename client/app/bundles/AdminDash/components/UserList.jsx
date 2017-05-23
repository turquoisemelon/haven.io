import React from 'react';


export default class UserList extends React.Component {
  render () {
    return(
      <div className="users">
        {
          this.props.users.map( user => {
            return <User key={user.id}
                      name={user.name}/>
          })
        }
      </div>
    )
  }
}

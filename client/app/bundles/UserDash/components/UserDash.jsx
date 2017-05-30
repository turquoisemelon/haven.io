import PropTypes from 'prop-types';
import React from 'react';
import SimpleMap from './SimpleMap.jsx'
import UserProfile from './card.jsx'


export default class UserDash extends React.Component {
  // constructor(props) {
  //   super(props);
  //   this.state = {
  //     selectedUserId: '',
  //     basicInfo: {
  //       name: "Tammy Geraldson",
  //       gender: "Female",
  //       age: "April 3, 1970",
  //       location: "Toronto, ON",
  //       photo: "https://pbs.twimg.com/profile_images/857413369850200065/KkKXIkze.jpg",
  //       bio: "Social Service worker since 1999.  BS University of Toronto",
  //     }
  //   };
  // }

// getProfile = (id) => {
//     const requested = new Request(`http://localhost:3000/api/users/${id}/profile`, {
//       method: 'GET',
//       credentials: 'same-origin',
//       header: {'Content-Type': 'application/json'},
//     })
//     fetch(requested)
//     .then((res)=> res.json())
//     .then(lore =>{
//       this.handleProfile(lore);
// // console.log(lore);
//     });
//   }

//   handleProfile = (lore) =>{
//     const new_profile = {
//       name: lore[0].name,
//       gender: lore[0].gender,
//       age: lore[0].age,
//       location: "Toronto, ON",
//       photo: "http://lorempixel.com/500/500/people",
//       bio: "Never bruv."
//     }
//     this.setState({basicInfo: new_profile});
//   }


//     componentDidMount() {
//     this.getProfile();
    // let poll = setInterval(()=>{
    //   this.pullUsers();
    //   this.setState({intervalId: poll});
    // }, 10000)
  // }
  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */

  render() {
    return (
    
<div>
<SimpleMap style ={{
      width: 100,
      height: 100,}}/>
</div>
    )
  }
}


//   <div>
//       <section>
//       <UserProfile data={this.state.basicInfo}/>
//       </section>
// </div>
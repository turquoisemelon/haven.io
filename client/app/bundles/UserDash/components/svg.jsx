var React = require('react');
// var my-icony = require('babel!svg-react!../svg/my-icon.svg?name=Icon');

export default class Svg extends React.Component {
  render() {
    return <svg
      style={{ textAlign: "center", width: "100px" }}
      pointerEvents={this.props.pointerEvents ? this.props.pointerEvents : "stroke"}
      {...this.props} >
        <circle cx="50" cy="50" r="25" style={{textAlign: "center"}} strokeWidth="5" />
    </svg>;
  }
}
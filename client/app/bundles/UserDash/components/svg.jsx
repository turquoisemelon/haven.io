var React = require('react');
var Icon = require('babel!svg-react!../svg/my-icon.svg?name=Icon');

export default class Svg extends Components({
    render () {
        return <Icon className='normal' />;
    }
});
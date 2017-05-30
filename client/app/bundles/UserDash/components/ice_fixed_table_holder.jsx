import React, {PropTypes, Component} from 'react';
import shouldPureComponentUpdate from 'react-pure-render';
var FixedDataTable = require('fixed-data-table');

var Table = FixedDataTable.Table;
var Column = FixedDataTable.Column;

export default class IceFixedTableHolder extends Component {
  static propTypes = {
    cellRenderer: PropTypes.func.isRequired,
    columns: PropTypes.array.isRequired
  }

  shouldComponentUpdate = shouldPureComponentUpdate;

  constructor(props) {
    super(props);
  }

  render() {
    const {cellRenderer, ...other} = this.props;
    return (
      <Table
        {...other}
        >
        {this.props.columns.map((c, index) => (<Column key={index} cellRenderer={cellRenderer} {...c} />))}
      </Table>
    );
  }
}
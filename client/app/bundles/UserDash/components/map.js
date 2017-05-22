
export class Container extends React.Component {
  render() {
    if (!this.props.loaded) {
      return <div>Loading...<\/div>
    }
    return (
      <div>Map will go here<\/div>
    )
  }
}

export default GoogleApiComponent({
  apiKey: AIzaSyCfqsqs1OAXX_C1F3iBkVxspWpiDObrx24
})(Container) 
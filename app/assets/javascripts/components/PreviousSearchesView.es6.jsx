class PreviousSearchesView extends React.Component {
  render() {
    return(
      <div>
        <h5>Your Previous Searches</h5>
        <div>
          {
            this.props.movies.map((movie, idx) => {
              return (<a key={idx} href={movie.api_url}><img src={movie.image_url}/></a>)
            })
          }
        </div>
      </div>
    )
  }
}

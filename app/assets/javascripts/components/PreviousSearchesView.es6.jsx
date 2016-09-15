class PreviousSearchesView extends React.Component {
  render() {
    return(
      <h5>
        {
          this.props.movies.map((movie, idx) => {
            return (<a href={movie.api_url}><img key={idx} src={movie.image_url}/></a>)
          })
        }
      </h5>
    )
  }
}

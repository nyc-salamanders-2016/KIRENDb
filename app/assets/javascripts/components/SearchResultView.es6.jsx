class SearchResultView extends React.Component {

  componentDidMount() {
    $.ajax({
      url: "/movies",
      method: "POST",
      data: {
        movie: {
          api_url: `http://www.omdbapi.com/?t=${this.props.movie[0]["Title"]}&y=${this.props.movie[0]["Year"]}&tomatoes=true`,
          image_url: this.props.movie[0]["Poster"]
        }
      }
    })
    .done((response) => {
      this.props.updatePrevious(response);
      if (response.is_popular) {
        this.props.updatePopular(response);
      }
    });
  }

  // componentWillMount() {
  //   $.ajax({
  //     url: "/movies",
  //     method: "POST",
  //     data: {
  //       movie: {
  //         api_url: `http://www.omdbapi.com/?t=${this.props.movie[0]["Title"]}&y=${this.props.movie[0]["Year"]}&tomatoes=true`,
  //         image_url: this.props.movie[0]["Poster"],
  //         is_previous: true
  //       }
  //     }
  //   })
  //   .done((response) => {
  //     this.props.updatePrevious(response);
  //     if (response.is_popular) {
  //       this.props.updatePopular(response);
  //     }
  //   });
  // }

  render() {
    let movie = this.props.movie[0];
    return(
      <div>
        <img src={movie["Poster"]} />
        <div>
          <p>{movie["Title"]}</p>
          <p><span>{movie["Rated"]}</span> | <span>{movie["Runtime"]}</span> | <span>{movie["Genre"]}</span> | <span>{movie["Released"]}</span></p>
        </div>
        <div>
          <p>Plot: {movie["Plot"]}</p>
        </div>
        <div>
          <p>Stars: {movie["Actors"]}</p>
          <p>Director: {movie["Director"]}</p>
          <p>Writers: {movie["Writer"]}</p>
        </div>
        <div>
          <p>Tomato Meter</p>
          <img src=""/>
          <p>{movie["tomatoMeter"]}%</p>
        </div>
        <div>
          <p>Audience Score</p>
          <img src=""/>
          <p>{movie["tomatoUserMeter"]}%</p>
        </div>
      </div>
    )
  }
}

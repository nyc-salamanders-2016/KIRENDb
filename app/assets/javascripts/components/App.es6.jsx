class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchedMovie: [],
      previousMovies: [],
      popularMovies: []
    };
    this.searchForAMovie = this.searchForAMovie.bind(this);
    this.populatePreviousSearches = this.populatePreviousSearches.bind(this);
    this.populatePopularSearches = this.populatePopularSearches.bind(this);
    this.updatePreviousSearches = this.updatePreviousSearches.bind(this);
    this.updatePopularSearches = this.updatePopularSearches.bind(this);
    this.searchResultView = this.searchResultView.bind(this)
  }

  componentDidMount() {
    this.populatePreviousSearches();
    this.populatePopularSearches();
  }

  searchForAMovie(movie) {
    this.setState({
      searchedMovie: [movie]
    });
    debugger;
  }

  searchResultView() {
    if (this.state.searchedMovie.length > 0) {
      return <SearchResultView movie={this.state.searchedMovie} updatePrevious={this.updatePreviousSearches} updatePopular={this.updatePopularSearches} />;
    } else {
      return;
    }
  }

  updatePreviousSearches(search) {
    this.setState({
      previousMovies: [search].concat(this.state.previousMovies)
    });
  }

  updatePopularSearches(search) {
    this.setState({
      popularMovies: [search].concat(this.state.popularMovies)
    });
  }

  populatePreviousSearches() {
    $.ajax({
      url: "/movies/previous",
      method: "GET"
    })
    .done((response) => {
      this.setState({
        previousMovies: response
      });
    });
  }

  populatePopularSearches() {
    $.ajax({
      url: "/movies/popular",
      method: "GET"
    })
    .done((response) => {
      this.setState({
        popularMovies: response
      });
    });
  }

  render() {
    return (
      <div>
        <SearchView onSearch={this.searchForAMovie} />
        {this.searchResultView()}
        {/* <ExistingSearchesView previousMovies={this.state.previousMovies} popularMovies={this.state.popularMovies} /> */}
      </div>
    )
  }
}

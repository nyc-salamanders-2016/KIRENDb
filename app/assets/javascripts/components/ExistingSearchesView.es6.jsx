class ExistingSearchesView extends React.Component {
  render() {
    <PreviousSearchesView movies={this.props.previousMovies}/>
    <PopularSearchesView movies={this.props.popularMovies}/>
  }
}

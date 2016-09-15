class ExistingSearchesView extends React.Component {
  render() {
    return(
      <div>
        <PreviousSearchesView movies={this.props.previousMovies}/>
        <PopularSearchesView movies={this.props.popularMovies}/>
      </div>
    )
  }
}

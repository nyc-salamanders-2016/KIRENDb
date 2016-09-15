class SearchView extends React.Component {
  constructor(props) {
    super(props);
    this.handleSearch = this.handleSearch.bind(this)
  }

  handleSearch(event) {
    event.preventDefault();

    var titleInput = this.refs.title,
        title = titleInput.value;

    var yearInput = this.refs.year,
        year = yearInput.value;

    $.ajax({
      url: "http://www.omdbapi.com/?",
      method: "GET",
      data: {
        t: title,
        y: year,
        tomatoes: "true"
      }
    })
    .done((response) => {
      this.props.onSearch(response)
    });
  }

  componentDidMount() {

  }

  render() {
    return(
      <form onSubmit={this.handleSearch}>
        <input type="text" ref="title" placeholder="Enter a movie title" />
        <input type="text" ref="year" placeholder="Release Year"/>
        <input type="submit" value="Search" />
      </form>
    )
  }
}

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
    var userNav;
    if (this.props.userSignedIn) {
      userNav =
        <div className="user-nav">
          <span>{this.props.username}</span> | <a id="logout" href="/logout">logout</a>
        </div>
    } else {
      userNav =
        <div className="user-nav">
          <a id="register" href="/users/new">register</a> | <a id="login" href="/login">login</a>
        </div>
    }
    return(
      <div id="header">
        <header>
          {userNav}
          <form onSubmit={this.handleSearch}>
            <input type="text" ref="title" placeholder="Enter a movie title" />
            <input type="text" ref="year" placeholder="Release Year"/>
            <input type="submit" value="Search" />
          </form>
        </header>
      </div>
    )
  }
}

var FilmList = React.createClass({
	getInitialState: function() {
		return {category: {}};
	},
	componentWillMount: function() {
		$.ajax({
			url: '/categories/'+this.props.category.id,
			dataType: 'json'
		})
		.done(function(response) {
			console.log('response', response);
			this.setState({category: response});
		}.bind(this));
	},
	render: function() {
		var films = this.state.category.films ? this.state.category.films : [];
		return (
			<div id="category-show-container">
			{films.map(function(film) {
				return (
					<Film key={film.id} data={film}/>
				)
			})}
			</div>
		)
	}
})

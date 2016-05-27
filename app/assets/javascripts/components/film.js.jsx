var Film = React.createClass({
	getInitialState: function() {
		return {category: {}};
	},
	componentWillMount: function() {
		$.ajax({
			url: '/categories/1',
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
			<div>
			{films.map(function(film) {
				return (
					<div class="film-box">
			      <h3>{film.name}</h3>
			      <a href={film.url}>
							<img src={film.image_url}/>
						</a>
			      <div>
							<a href={film.url}>Info and reviews</a>
			      </div>
			    </div>
				)
			})}
			</div>
		)
	}
})

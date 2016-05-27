var Film = React.createClass({
  render: function() {
    console.log('props', this.props);
    var data = this.props.data
    if(!this.props.data) {
      return <div/>;
    }
    return (
      <div className="film-box">
        <h3>{data.name}</h3>
        <a href={data.url}>
          <img src={data.image_url} height={210} width={140}/>
        </a>
        <div>
          <a href={data.url}>Info and reviews</a>
        </div>
      </div>
    );
  }
})

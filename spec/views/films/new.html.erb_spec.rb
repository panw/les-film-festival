require 'spec_helper'

describe "films/new" do
  before(:each) do
    assign(:film, stub_model(Film,
      :category => nil,
      :name => "MyString",
      :image_url => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", films_path, "post" do
      assert_select "input#film_category[name=?]", "film[category]"
      assert_select "input#film_name[name=?]", "film[name]"
      assert_select "input#film_image_url[name=?]", "film[image_url]"
      assert_select "textarea#film_description[name=?]", "film[description]"
    end
  end
end

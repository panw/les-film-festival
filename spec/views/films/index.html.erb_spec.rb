require 'spec_helper'

describe "films/index" do
  before(:each) do
    assign(:films, [
      stub_model(Film,
        :category => nil,
        :name => "Name",
        :image_url => "Image Url",
        :description => "MyText"
      ),
      stub_model(Film,
        :category => nil,
        :name => "Name",
        :image_url => "Image Url",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of films" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

require 'spec_helper'

describe "reviews/show" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :content => "MyText",
      :rating => 1,
      :film => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end

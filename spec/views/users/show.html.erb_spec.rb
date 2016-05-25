require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :password => "",
      :first_name => "First Name",
      :last_name => "Last Name",
      :image_url => "Image Url",
      :role => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(//)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Image Url/)
    rendered.should match(/1/)
  end
end

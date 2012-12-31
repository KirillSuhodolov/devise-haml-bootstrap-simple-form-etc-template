require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nickname => "Nickname",
      :age => 1,
      :weight => 2,
      :height => 3,
      :constitution => "Constitution",
      :sport => "Sport"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Constitution/)
    rendered.should match(/Sport/)
  end
end

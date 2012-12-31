require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :nickname => "Nickname",
        :age => 1,
        :weight => 2,
        :height => 3,
        :constitution => "Constitution",
        :sport => "Sport"
      ),
      stub_model(User,
        :nickname => "Nickname",
        :age => 1,
        :weight => 2,
        :height => 3,
        :constitution => "Constitution",
        :sport => "Sport"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Constitution".to_s, :count => 2
    assert_select "tr>td", :text => "Sport".to_s, :count => 2
  end
end

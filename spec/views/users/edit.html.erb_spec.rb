require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nickname => "MyString",
      :age => 1,
      :weight => 1,
      :height => 1,
      :constitution => "MyString",
      :sport => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_nickname", :name => "user[nickname]"
      assert_select "input#user_age", :name => "user[age]"
      assert_select "input#user_weight", :name => "user[weight]"
      assert_select "input#user_height", :name => "user[height]"
      assert_select "input#user_constitution", :name => "user[constitution]"
      assert_select "input#user_sport", :name => "user[sport]"
    end
  end
end

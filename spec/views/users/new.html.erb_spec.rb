require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :nickname => "MyString",
      :age => 1,
      :weight => 1,
      :height => 1,
      :constitution => "MyString",
      :sport => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_nickname", :name => "user[nickname]"
      assert_select "input#user_age", :name => "user[age]"
      assert_select "input#user_weight", :name => "user[weight]"
      assert_select "input#user_height", :name => "user[height]"
      assert_select "input#user_constitution", :name => "user[constitution]"
      assert_select "input#user_sport", :name => "user[sport]"
    end
  end
end

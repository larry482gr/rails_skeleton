require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :username => "MyString",
      :email => "MyString",
      :confirmation_token => "MyString",
      :unconfirmed_email => "MyString",
      :locked => false,
      :deleted => false,
      :blacklisted => false,
      :language => ""
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_confirmation_token[name=?]", "user[confirmation_token]"

      assert_select "input#user_unconfirmed_email[name=?]", "user[unconfirmed_email]"

      assert_select "input#user_locked[name=?]", "user[locked]"

      assert_select "input#user_deleted[name=?]", "user[deleted]"

      assert_select "input#user_blacklisted[name=?]", "user[blacklisted]"

      assert_select "input#user_language[name=?]", "user[language]"
    end
  end
end

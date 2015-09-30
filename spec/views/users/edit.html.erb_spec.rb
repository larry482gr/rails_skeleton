require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

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

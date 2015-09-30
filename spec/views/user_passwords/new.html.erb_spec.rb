require 'rails_helper'

RSpec.describe "user_passwords/new", type: :view do
  before(:each) do
    assign(:user_password, UserPassword.new(
      :user => nil,
      :service => nil,
      :password_question => nil,
      :password_answer => "MyString"
    ))
  end

  it "renders new user_password form" do
    render

    assert_select "form[action=?][method=?]", user_passwords_path, "post" do

      assert_select "input#user_password_user_id[name=?]", "user_password[user_id]"

      assert_select "input#user_password_service_id[name=?]", "user_password[service_id]"

      assert_select "input#user_password_password_question_id[name=?]", "user_password[password_question_id]"

      assert_select "input#user_password_password_answer[name=?]", "user_password[password_answer]"
    end
  end
end

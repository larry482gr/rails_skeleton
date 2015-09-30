require 'rails_helper'

RSpec.describe "user_passwords/edit", type: :view do
  before(:each) do
    @user_password = assign(:user_password, UserPassword.create!(
      :user => nil,
      :service => nil,
      :password_question => nil,
      :password_answer => "MyString"
    ))
  end

  it "renders the edit user_password form" do
    render

    assert_select "form[action=?][method=?]", user_password_path(@user_password), "post" do

      assert_select "input#user_password_user_id[name=?]", "user_password[user_id]"

      assert_select "input#user_password_service_id[name=?]", "user_password[service_id]"

      assert_select "input#user_password_password_question_id[name=?]", "user_password[password_question_id]"

      assert_select "input#user_password_password_answer[name=?]", "user_password[password_answer]"
    end
  end
end

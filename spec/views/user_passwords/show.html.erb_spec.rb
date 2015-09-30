require 'rails_helper'

RSpec.describe "user_passwords/show", type: :view do
  before(:each) do
    @user_password = assign(:user_password, UserPassword.create!(
      :user => nil,
      :service => nil,
      :password_question => nil,
      :password_answer => "Password Answer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Password Answer/)
  end
end

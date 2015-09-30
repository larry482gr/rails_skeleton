require 'rails_helper'

RSpec.describe "user_passwords/index", type: :view do
  before(:each) do
    assign(:user_passwords, [
      UserPassword.create!(
        :user => nil,
        :service => nil,
        :password_question => nil,
        :password_answer => "Password Answer"
      ),
      UserPassword.create!(
        :user => nil,
        :service => nil,
        :password_question => nil,
        :password_answer => "Password Answer"
      )
    ])
  end

  it "renders a list of user_passwords" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Password Answer".to_s, :count => 2
  end
end

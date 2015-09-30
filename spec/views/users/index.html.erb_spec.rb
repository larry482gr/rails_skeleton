require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :email => "Email",
        :confirmation_token => "Confirmation Token",
        :unconfirmed_email => "Unconfirmed Email",
        :locked => false,
        :deleted => false,
        :blacklisted => false,
        :language => ""
      ),
      User.create!(
        :username => "Username",
        :email => "Email",
        :confirmation_token => "Confirmation Token",
        :unconfirmed_email => "Unconfirmed Email",
        :locked => false,
        :deleted => false,
        :blacklisted => false,
        :language => ""
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Confirmation Token".to_s, :count => 2
    assert_select "tr>td", :text => "Unconfirmed Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

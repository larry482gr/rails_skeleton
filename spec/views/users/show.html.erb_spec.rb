require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "Username",
      :email => "Email",
      :confirmation_token => "Confirmation Token",
      :unconfirmed_email => "Unconfirmed Email",
      :locked => false,
      :deleted => false,
      :blacklisted => false,
      :language => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Confirmation Token/)
    expect(rendered).to match(/Unconfirmed Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end

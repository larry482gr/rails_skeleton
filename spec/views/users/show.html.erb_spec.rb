require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before(:each) do
    @language = Language.new(locale: 'en', language: 'english', active: true)

    @user = assign(:user, User.create!(
      :username => 'Username',
      :email => 'email@test.com',
      :confirmation_token => 'f3q8hfi',
      :locked => false,
      :deleted => false,
      :blacklisted => false,
      :language => @language.id
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/f3q8hfi/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/#{@language.id}/)
  end
end

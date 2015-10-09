require 'rails_helper'

RSpec.describe 'user_profiles/show', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    @user = User.create!(
        :username => 'Username',
        :email => 'email@test.com',
        :confirmation_token => 'f3q8hfi',
        :language => language.id
    )

    @user_profile = assign(:user_profiles, UserProfile.create!(
      :user => @user,
      :gender => 'm',
      :fname => 'Fname',
      :lname => 'Lname',
      :mobile => '1234567890',
      :photo => 'Photo'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/m/)
    expect(rendered).to match(/Fname/)
    expect(rendered).to match(/Lname/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Photo/)
  end
end

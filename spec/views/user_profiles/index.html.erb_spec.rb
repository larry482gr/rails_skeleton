require 'rails_helper'

RSpec.describe 'user_profiles/index', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    @user1 = User.create!(
        :username => 'Username1',
        :email => 'email1@test.com',
        :confirmation_token => 'f3q8hfi1',
        :language => language.id
    )

    @user2 = User.create!(
        :username => 'Username2',
        :email => 'email2@test.com',
        :confirmation_token => 'f3q8hfi2',
        :language => language.id
    )

    assign(:user_profiles, [
      UserProfile.create!(
        :user => @user1,
        :gender => 'm',
        :fname => 'Fname',
        :lname => 'Lname',
        :mobile => '1234567890',
        :photo => 'Photo'
      ),
      UserProfile.create!(
        :user => @user2,
        :gender => 'm',
        :fname => 'Fname',
        :lname => 'Lname',
        :mobile => '1234567890',
        :photo => 'Photo'
      )
    ])
  end

  it 'renders a list of user_profiles' do
    render
    assert_select 'tr>td', :text => 'm'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Fname'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Lname'.to_s, :count => 2
    assert_select 'tr>td', :text => '1234567890'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Photo'.to_s, :count => 2
  end
end

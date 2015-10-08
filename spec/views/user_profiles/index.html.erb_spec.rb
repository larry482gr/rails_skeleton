require 'rails_helper'

RSpec.describe 'user_profiles/index', type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        :user => nil,
        :gender => 'm',
        :fname => 'Fname',
        :lname => 'Lname',
        :mobile => '1234567890',
        :photo => 'Photo'
      ),
      UserProfile.create!(
        :user => nil,
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
    assert_select 'tr>td', :text => nil.to_s, :count => 2
    assert_select 'tr>td', :text => ''.to_s, :count => 2
    assert_select 'tr>td', :text => 'Fname'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Lname'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Mobile'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Photo'.to_s, :count => 2
  end
end

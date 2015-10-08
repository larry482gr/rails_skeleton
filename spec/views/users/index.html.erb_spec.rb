require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    @language = Language.create!(locale: 'gr', language: 'greek', active: true)

    assign(:users, [
      User.create!(
        :username => 'Username1',
        :email => 'email1@test.com',
        :confirmation_token => 'f83bifh341',
        :language => @language
      ),
      User.create!(
        :username => 'Username2',
        :email => 'email2@test.com',
        :confirmation_token => 'f83bifh342',
        :language => @language
      )
    ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', :text => 'Username1'.to_s, :count => 1
    assert_select 'tr>td', :text => 'email1@test.com'.to_s, :count => 1
    assert_select 'tr>td', :text => 'f83bifh341'.to_s, :count => 1
    assert_select 'tr>td', :text => 'Username2'.to_s, :count => 1
    assert_select 'tr>td', :text => 'email2@test.com'.to_s, :count => 1
    assert_select 'tr>td', :text => 'f83bifh342'.to_s, :count => 1
    assert_select 'tr>td', :text => @language.language.upcase, :count => 2
  end
end

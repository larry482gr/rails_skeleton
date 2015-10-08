require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @language = Language.new(locale: 'en', language: 'english', active: true)
    
    @user = assign(:user, User.create!(
      :username => 'MyString',
      :email => 'email@test.com',
      :confirmation_token => 'vb38u04v',
      :locked => false,
      :deleted => false,
      :blacklisted => false,
      :language => @language.id
    ))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do

      assert_select 'input#user_username[name=?]', 'user[username]'

      assert_select 'input#user_email[name=?]', 'user[email]'

      assert_select 'input#user_confirmation_token[name=?]', 'user[confirmation_token]'

      assert_select 'input#user_locked[name=?]', 'user[locked]'

      assert_select 'input#user_deleted[name=?]', 'user[deleted]'

      assert_select 'input#user_blacklisted[name=?]', 'user[blacklisted]'

      assert_select 'input#user_language[name=?]', 'user[language]'
    end
  end
end

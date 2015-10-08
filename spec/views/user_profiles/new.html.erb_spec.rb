require 'rails_helper'

RSpec.describe 'user_profiles/new', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    @user = User.create!(
        :username => 'Username',
        :email => 'email@test.com',
        :confirmation_token => 'f3q8hfi',
        :locked => false,
        :deleted => false,
        :blacklisted => false,
        :language => language.id
    )

    assign(:user_profiles, UserProfile.new(
      :user => @user,
      :gender => 'm',
      :fname => 'Fname',
      :lname => 'Lname',
      :mobile => '1234567890',
      :photo => 'Photo'
    ))
  end

  it 'renders new user_profiles form' do
    render

    assert_select 'form[action=?][method=?]', user_profile_path, 'post' do

      assert_select 'input#user_information_gender[name=?]', 'user_profiles[gender]'

      assert_select 'input#user_information_fname[name=?]', 'user_profiles[fname]'

      assert_select 'input#user_information_lname[name=?]', 'user_profiles[lname]'

      assert_select 'input#user_information_mobile[name=?]', 'user_profiles[mobile]'

      assert_select 'input#user_information_photo[name=?]', 'user_profiles[photo]'

    end
  end
end

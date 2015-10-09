require 'rails_helper'

RSpec.describe 'user_profiles/edit', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    @user = User.create!(
        :username => 'Username',
        :email => 'email@test.com',
        :confirmation_token => 'f3q8hfi',
        :language => language.id
    )

    @user_profile = UserProfile.create!(
      :user => @user,
      :gender => 'm',
      :fname => 'Fname',
      :lname => 'Lname',
      :mobile => '1234567890',
      :photo => 'Photo'
    )
  end

  it 'renders the edit user_profiles form' do
    render

    assert_select 'form[action=?][method=?]', edit_user_profile_path(@user_profile.user_id), 'post' do

      assert_select 'input#user_profile_gender[name=?]', 'user_profile[gender]'

      assert_select 'input#user_profile_fname[name=?]', 'user_profile[fname]'

      assert_select 'input#user_profile_lname[name=?]', 'user_profile[lname]'

      assert_select 'input#user_profile_mobile[name=?]', 'user_profile[mobile]'

      assert_select 'input#user_profile_photo[name=?]', 'user_profile[photo]'

    end
  end
end

require 'rails_helper'

RSpec.describe "user_profiles/new", type: :view do
  before(:each) do
    assign(:user_profiles, UserProfile.new(
      :user => nil,
      :gender => "",
      :fname => "MyString",
      :lname => "MyString",
      :mobile => "MyString",
      :photo => "MyString",
      :addresses => "MyText",
      :city => "MyString",
      :region => "MyString",
      :zipcode => "MyString",
      :country => "MyString",
      :failed_attempts => 1,
      :created_by => 1
    ))
  end

  it "renders new user_profiles form" do
    render

    assert_select "form[action=?][method=?]", user_informations_path, "post" do

      assert_select "input#user_information_user_id[name=?]", "user_profiles[user_id]"

      assert_select "input#user_information_gender[name=?]", "user_profiles[gender]"

      assert_select "input#user_information_fname[name=?]", "user_profiles[fname]"

      assert_select "input#user_information_lname[name=?]", "user_profiles[lname]"

      assert_select "input#user_information_mobile[name=?]", "user_profiles[mobile]"

      assert_select "input#user_information_photo[name=?]", "user_profiles[photo]"

      assert_select "textarea#user_information_addresses[name=?]", "user_profiles[addresses]"

      assert_select "input#user_information_city[name=?]", "user_profiles[city]"

      assert_select "input#user_information_region[name=?]", "user_profiles[region]"

      assert_select "input#user_information_zipcode[name=?]", "user_profiles[zipcode]"

      assert_select "input#user_information_country[name=?]", "user_profiles[country]"

      assert_select "input#user_information_failed_attempts[name=?]", "user_profiles[failed_attempts]"

      assert_select "input#user_information_created_by[name=?]", "user_profiles[created_by]"
    end
  end
end

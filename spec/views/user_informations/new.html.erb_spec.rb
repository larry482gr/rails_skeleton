require 'rails_helper'

RSpec.describe "user_informations/new", type: :view do
  before(:each) do
    assign(:user_information, UserInformation.new(
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

  it "renders new user_information form" do
    render

    assert_select "form[action=?][method=?]", user_informations_path, "post" do

      assert_select "input#user_information_user_id[name=?]", "user_information[user_id]"

      assert_select "input#user_information_gender[name=?]", "user_information[gender]"

      assert_select "input#user_information_fname[name=?]", "user_information[fname]"

      assert_select "input#user_information_lname[name=?]", "user_information[lname]"

      assert_select "input#user_information_mobile[name=?]", "user_information[mobile]"

      assert_select "input#user_information_photo[name=?]", "user_information[photo]"

      assert_select "textarea#user_information_addresses[name=?]", "user_information[addresses]"

      assert_select "input#user_information_city[name=?]", "user_information[city]"

      assert_select "input#user_information_region[name=?]", "user_information[region]"

      assert_select "input#user_information_zipcode[name=?]", "user_information[zipcode]"

      assert_select "input#user_information_country[name=?]", "user_information[country]"

      assert_select "input#user_information_failed_attempts[name=?]", "user_information[failed_attempts]"

      assert_select "input#user_information_created_by[name=?]", "user_information[created_by]"
    end
  end
end

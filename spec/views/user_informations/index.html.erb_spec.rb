require 'rails_helper'

RSpec.describe "user_informations/index", type: :view do
  before(:each) do
    assign(:user_informations, [
      UserInformation.create!(
        :user => nil,
        :gender => "",
        :fname => "Fname",
        :lname => "Lname",
        :mobile => "Mobile",
        :photo => "Photo",
        :addresses => "MyText",
        :city => "City",
        :region => "Region",
        :zipcode => "Zipcode",
        :country => "Country",
        :failed_attempts => 1,
        :created_by => 2
      ),
      UserInformation.create!(
        :user => nil,
        :gender => "",
        :fname => "Fname",
        :lname => "Lname",
        :mobile => "Mobile",
        :photo => "Photo",
        :addresses => "MyText",
        :city => "City",
        :region => "Region",
        :zipcode => "Zipcode",
        :country => "Country",
        :failed_attempts => 1,
        :created_by => 2
      )
    ])
  end

  it "renders a list of user_informations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

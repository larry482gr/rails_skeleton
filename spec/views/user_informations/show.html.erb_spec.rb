require 'rails_helper'

RSpec.describe "user_informations/show", type: :view do
  before(:each) do
    @user_information = assign(:user_information, UserInformation.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Fname/)
    expect(rendered).to match(/Lname/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end

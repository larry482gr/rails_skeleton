require 'rails_helper'

RSpec.describe "admin/permissions/index", type: :view do
  before(:each) do
    assign(:permissions, [
      Permission.create!(
        :label => "Label",
        :description => "Description",
        :active => false,
        :created_by => 1
      ),
      Permission.create!(
        :label => "Label",
        :description => "Description",
        :active => false,
        :created_by => 1
      )
    ])
  end

  it "renders a list of admin/permissions" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

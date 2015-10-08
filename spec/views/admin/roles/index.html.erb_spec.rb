require 'rails_helper'

RSpec.describe "admin/roles/index", type: :view do
  before(:each) do
    assign(:roles, [
      Role.create!(
        :label => "Label",
        :description => "Description",
        :active => false,
        :created_by => 1
      ),
      Role.create!(
        :label => "Label",
        :description => "Description",
        :active => false,
        :created_by => 1
      )
    ])
  end

  it "renders a list of admin/roles" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

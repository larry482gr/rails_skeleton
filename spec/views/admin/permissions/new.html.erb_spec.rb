require 'rails_helper'

RSpec.describe "admin/permissions/new", type: :view do
  before(:each) do
    assign(:permission, Permission.new(
      :label => "MyString",
      :description => "MyString",
      :active => false,
      :created_by => 1
    ))
  end

  it "renders new admin_permission form" do
    render

    assert_select "form[action=?][method=?]", admin_permissions_path, "post" do

      assert_select "input#permission_label[name=?]", "permission[label]"

      assert_select "input#permission_description[name=?]", "permission[description]"

      assert_select "input#permission_active[name=?]", "permission[active]"

      assert_select "input#permission_created_by[name=?]", "permission[created_by]"
    end
  end
end

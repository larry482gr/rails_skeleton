require 'rails_helper'

RSpec.describe "admin/roles/edit", type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :label => "MyString",
      :description => "MyString",
      :active => false,
      :created_by => 1
    ))
  end

  it "renders the edit admin_role form" do
    render

    assert_select "form[action=?][method=?]", admin_role_path(@role), "post" do

      assert_select "input#role_label[name=?]", "role[label]"

      assert_select "input#role_description[name=?]", "role[description]"

      assert_select "input#role_active[name=?]", "role[active]"

      assert_select "input#role_created_by[name=?]", "role[created_by]"
    end
  end
end

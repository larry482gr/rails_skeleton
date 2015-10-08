require 'rails_helper'

RSpec.describe "admin/permissions/show", type: :view do
  before(:each) do
    @permission = assign(:permission, Permission.create!(
      :label => "Label",
      :description => "Description",
      :active => false,
      :created_by => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end

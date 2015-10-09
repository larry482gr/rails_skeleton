require 'rails_helper'

RSpec.describe 'admin/permissions/show', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    user = User.create!(
        :username => 'Username',
        :email => 'email@test.com',
        :confirmation_token => 'f3q8hfi',
        :language => language.id
    )

    @permission = assign(:permission, Permission.create!(
      :label => 'Label',
      :description => 'Description',
      :active => true,
      :created_by => user
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/true/)
    expect(rendered).to match(/1/)
  end
end

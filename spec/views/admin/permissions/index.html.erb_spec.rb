require 'rails_helper'

RSpec.describe 'admin/permissions/index', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    @user = User.create!(
        :username => 'Username',
        :email => 'email@test.com',
        :confirmation_token => 'f3q8hfi',
        :language => language.id
    )

    assign(:permissions, [
      Permission.create!(
        :label => 'Label1',
        :description => 'Description',
        :active => true,
        :created_by => @user
      ),
      Permission.create!(
        :label => 'Label2',
        :description => 'Description',
        :active => true,
        :created_by => @user
      )
    ])
  end

  it 'renders a list of admin/permissions' do
    render
    assert_select 'tr>td', :text => 'Label1'.to_s, :count => 1
    assert_select 'tr>td', :text => 'Label2'.to_s, :count => 1
    assert_select 'tr>td', :text => 'Description'.to_s, :count => 2
    assert_select 'tr>td', :text => true.to_s, :count => 2
    #assert_select 'tr>td', :text => @user.id.to_s, :count => 2
  end
end

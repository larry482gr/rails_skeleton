require 'rails_helper'

RSpec.describe 'admin/roles/index', type: :view do
  before(:each) do
    language = Language.new(locale: 'en', language: 'english', active: true)

    @user = User.create!(
        :username => 'Username',
        :email => 'email@test.com',
        :confirmation_token => 'f3q8hfi',
        :language => language.id
    )

    assign(:roles, [
      Role.create!(
        :label => 'Label1',
        :description => 'Description',
        :created_by => @user
      ),
      Role.create!(
        :label => 'Label2',
        :description => 'Description',
        :created_by => @user
      )
    ])
  end

  it 'renders a list of admin/roles' do
    render
    assert_select 'tr>td', :text => 'Label1'.to_s, :count => 1
    assert_select 'tr>td', :text => 'Label2'.to_s, :count => 1
    assert_select 'tr>td', :text => 'Description'.to_s, :count => 2
    #assert_select 'tr>td', :text => @user.id, :count => 2
  end
end

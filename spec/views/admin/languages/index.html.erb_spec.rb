require 'rails_helper'

RSpec.describe 'admin/languages/index', type: :view do
  before(:each) do
    assign(:languages, [
      Language.create!(
        :locale => 'en',
        :language => 'english',
        :active => true
      ),
      Language.create!(
        :locale => 'gr',
        :language => 'greek',
        :active => true
      )
    ])
  end

  it 'renders a list of languages' do
    render
    assert_select 'tr>td', :text => 'en'.to_s, :count => 1
    assert_select 'tr>td', :text => 'english'.to_s, :count => 1
    assert_select 'tr>td', :text => 'gr'.to_s, :count => 1
    assert_select 'tr>td', :text => 'greek'.to_s, :count => 1
    assert_select 'tr>td', :text => true.to_s, :count => 2
  end
end

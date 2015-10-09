require 'rails_helper'

RSpec.describe 'admin/languages/show', type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
      :locale => 'Locale',
      :language => 'Language',
      :active => true
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Locale/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/true/)
  end
end

require 'rails_helper'

RSpec.describe "admin/languages/edit", type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
      :locale => "MyString",
      :language => "MyString",
      :active => false
    ))
  end

  it "renders the edit language form" do
    render

    assert_select "form[action=?][method=?]", admin_language_path(@language), "post" do

      assert_select "input#language_locale[name=?]", "language[locale]"

      assert_select "input#language_language[name=?]", "language[language]"

      assert_select "input#language_active[name=?]", "language[active]"
    end
  end
end

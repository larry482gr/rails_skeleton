require 'rails_helper'

RSpec.describe "admin/languages/new", type: :view do
  before(:each) do
    assign(:language, Language.new(
      :locale => "MyString",
      :language => "MyString",
      :active => false
    ))
  end

  it "renders new language form" do
    render

    assert_select "form[action=?][method=?]", languages_path, "post" do

      assert_select "input#language_locale[name=?]", "language[locale]"

      assert_select "input#language_language[name=?]", "language[language]"

      assert_select "input#language_active[name=?]", "language[active]"
    end
  end
end

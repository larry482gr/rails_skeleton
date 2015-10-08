require 'rails_helper'

RSpec.describe "admin/languages/index", type: :view do
  before(:each) do
    assign(:languages, [
      Language.create!(
        :locale => "Locale",
        :language => "Language",
        :active => false
      ),
      Language.create!(
        :locale => "Locale",
        :language => "Language",
        :active => false
      )
    ])
  end

  it "renders a list of languages" do
    render
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

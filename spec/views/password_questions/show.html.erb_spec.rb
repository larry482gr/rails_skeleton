require 'rails_helper'

RSpec.describe "password_questions/show", type: :view do
  before(:each) do
    @password_question = assign(:password_question, PasswordQuestion.create!(
      :question => "Question"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Question/)
  end
end

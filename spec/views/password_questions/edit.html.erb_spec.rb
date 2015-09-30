require 'rails_helper'

RSpec.describe "password_questions/edit", type: :view do
  before(:each) do
    @password_question = assign(:password_question, PasswordQuestion.create!(
      :question => "MyString"
    ))
  end

  it "renders the edit password_question form" do
    render

    assert_select "form[action=?][method=?]", password_question_path(@password_question), "post" do

      assert_select "input#password_question_question[name=?]", "password_question[question]"
    end
  end
end

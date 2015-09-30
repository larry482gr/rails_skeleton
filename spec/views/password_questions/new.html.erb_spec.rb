require 'rails_helper'

RSpec.describe "password_questions/new", type: :view do
  before(:each) do
    assign(:password_question, PasswordQuestion.new(
      :question => "MyString"
    ))
  end

  it "renders new password_question form" do
    render

    assert_select "form[action=?][method=?]", password_questions_path, "post" do

      assert_select "input#password_question_question[name=?]", "password_question[question]"
    end
  end
end

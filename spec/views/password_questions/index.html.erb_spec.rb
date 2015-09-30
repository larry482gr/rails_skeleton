require 'rails_helper'

RSpec.describe "password_questions/index", type: :view do
  before(:each) do
    assign(:password_questions, [
      PasswordQuestion.create!(
        :question => "Question"
      ),
      PasswordQuestion.create!(
        :question => "Question"
      )
    ])
  end

  it "renders a list of password_questions" do
    render
    assert_select "tr>td", :text => "Question".to_s, :count => 2
  end
end

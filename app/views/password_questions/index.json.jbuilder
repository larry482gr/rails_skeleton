json.array!(@password_questions) do |password_question|
  json.extract! password_question, :id, :question
  json.url password_question_url(password_question, format: :json)
end

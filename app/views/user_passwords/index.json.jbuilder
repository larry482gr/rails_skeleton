json.array!(@user_passwords) do |user_password|
  json.extract! user_password, :id, :user_id, :service_id, :password_question_id, :password_answer, :expires_at
  json.url user_password_url(user_password, format: :json)
end

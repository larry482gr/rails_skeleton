class RemoveNotNullFromConfirmationSentAt < ActiveRecord::Migration
  def change
    change_column_null :users, :confirmation_sent_at, null: true, default: nil
  end
end

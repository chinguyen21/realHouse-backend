class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :message
      t.string :sender_name
      t.string :sender_email
      t.string :sender_phone

    end
  end
end

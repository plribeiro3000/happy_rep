class AddConfirmationFieldsToUser < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string   :confirmation_token, :after => :last_sign_in_ip
      t.datetime :confirmed_at, :after => :confirmation_token
      t.datetime :confirmation_sent_at, :after => :confirmed_at
    end

    add_index :users, :confirmation_token,   :unique => true
  end
end
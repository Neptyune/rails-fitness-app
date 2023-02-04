class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.references :trainer_map

      t.timestamps
    end
  end
end

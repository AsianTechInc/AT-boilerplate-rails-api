class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, index: true, unique: true
      t.string :password_digest
      t.datetime :deleted_at
      t.timestamps
    end
  end
end

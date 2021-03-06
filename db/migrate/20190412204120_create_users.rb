class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.integer :dollars, :default => 0
      t.integer :savings, :default => 0
      t.integer :spendings, :default => 0
      t.timestamps
    end
  end
end

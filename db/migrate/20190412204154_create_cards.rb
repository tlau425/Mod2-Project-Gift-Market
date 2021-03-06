class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :value
      t.integer :price
      t.integer :category_id
      t.integer :company_id
      t.string :picture, :default => "https://trefamiglia.com/wp-content/uploads/2017/12/gcc.png"
      t.timestamps
    end
  end
end

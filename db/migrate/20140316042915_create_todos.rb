class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.text :remarks
      t.boolean :status
      t.integer :user_id

      t.timestamps
    end
  end
end

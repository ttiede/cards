class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :cards, :slug, unique: true
  end
end

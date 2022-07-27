class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.integer :stock, null: false, default: 0
      t.references :store, null: false, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end

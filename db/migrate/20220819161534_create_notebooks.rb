class CreateNotebooks < ActiveRecord::Migration[7.0]
  def change
    create_table :notebooks do |t|
      t.string :name, null: false
      t.text   :content, size: :long

      t.timestamps
    end
  end
end

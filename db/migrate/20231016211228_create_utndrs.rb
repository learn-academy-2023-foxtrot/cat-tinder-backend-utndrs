class CreateUtndrs < ActiveRecord::Migration[7.0]
  def change
    create_table :utndrs do |t|
      t.string :name
      t.integer :age
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end

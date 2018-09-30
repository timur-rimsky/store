class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :text
      t.string :image
      t.string :text
      t.string :price
      t.string :integer

      t.timestamps
    end
  end
end

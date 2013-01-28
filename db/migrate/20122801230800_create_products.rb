class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string     :type
      t.references :box
      t.references :sub_product
      t.string     :title

      t.timestamps
    end
  end
end

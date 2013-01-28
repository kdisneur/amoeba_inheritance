class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string     :title

      t.timestamps
    end
  end
end

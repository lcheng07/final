class CreatePackinglists < ActiveRecord::Migration
  def change
    create_table :packinglists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

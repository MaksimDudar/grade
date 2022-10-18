class CreateMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :masters do |t|
      t.string :strana
      t.string :strana1
      t.string :truck
      t.string :driver
      t.string :manager
      t.integer :rating, default: 0

      t.timestamps
    end
  end
end

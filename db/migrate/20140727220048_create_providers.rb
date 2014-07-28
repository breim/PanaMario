class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :product_id
      t.decimal :quantidade, :precision => 12, :scale => 4
      t.decimal :price, :precision => 12, :scale => 4

      t.timestamps
    end
  end
end

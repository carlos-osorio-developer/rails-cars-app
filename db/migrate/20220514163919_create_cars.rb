class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :model
      t.float :hourly_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

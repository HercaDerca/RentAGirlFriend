class CreateGirlfriends < ActiveRecord::Migration[7.1]
  def change
    create_table :girlfriends do |t|
      t.string :name
      t.string :location
      t.string :bio
      t.string :pfp
      t.float :hourly_rate
      t.boolean :availability
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

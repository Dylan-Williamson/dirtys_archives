class CreateBeats < ActiveRecord::Migration[6.0]
  def change
    create_table :beats do |t|
      t.string :title
      t.integer :user_id
      t.integer :genre_id
      t.timestamps
    end
  end
end

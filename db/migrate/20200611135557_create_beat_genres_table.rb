class CreateBeatGenresTable < ActiveRecord::Migration[6.0]
  def change
    create_table :beat_genres do |t|
      t.integer :beat_id
      t.integer :genre_id
    end
  end
end

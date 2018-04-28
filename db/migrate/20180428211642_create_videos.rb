class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.integer :video_id
      t.time :length

      t.timestamps
    end
  end
end

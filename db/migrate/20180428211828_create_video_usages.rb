class CreateVideoUsages < ActiveRecord::Migration[5.1]
  def change
    create_table :video_usages do |t|
      t.belongs_to :video, foreign_key: true
      t.belongs_to :users, foreign_key: true
      t.time :watched

      t.timestamps
    end
  end
end

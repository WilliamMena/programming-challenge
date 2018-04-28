class CreateVideoUsages < ActiveRecord::Migration[5.1]
  def change
    create_table :video_usages do |t|
      t.belongs_to :video, foreign_key: true

      t.timestamps
    end
  end
end

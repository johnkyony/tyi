class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end

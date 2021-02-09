class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title        ,null: false
      t.text :content
      t.datetime :start_time ,null: false
      t.datetime :end_time   ,null: false
      t.string :label_color  ,null: false
      t.references :user     ,foreign_key: true
      t.timestamps
    end
  end
end

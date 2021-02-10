class CreateLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :labels do |t|
      t.string :white,    null: false, default: 'white'
      t.string :red,      null: false, default: 'red'
      t.string :pink,     null: false, default: 'pink'
      t.string :orange,   null: false, default: 'orange'
      t.string :green,    null: false, default: 'green'
      t.string :blue,     null: false, default: 'blue'
      t.string :purple,   null: false, default: 'purple'
      t.string :brown,    null: false, default: 'brown'
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

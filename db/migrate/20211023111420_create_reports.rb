class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :user_id,       null: false
      t.string  :title,         null: false
      t.string  :mountain_name, null: false
      t.string  :elevation,     null: false
      t.string  :walking_time,  null: false
      t.string  :difficulty,    null: false
      t.string  :comment,       null: false

      t.timestamps
    end
  end
end

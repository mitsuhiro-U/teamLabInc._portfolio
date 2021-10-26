class ChangeColumnToNull < ActiveRecord::Migration[5.2]

  def up
    change_column :reports, :title,:string, null: true
    change_column :reports, :mountain_name,:string, null: true
    change_column :reports, :elevation,:string, null: true
    change_column :reports, :walking_time,:string, null: true
    change_column :reports, :difficulty,:string, null: true
    change_column :reports, :title,:string, null: true
  end

  def down
    change_column :reports, :title,:string, null: false
    change_column :reports, :mountain_name,:string, null: false
    change_column :reports, :elevation,:string, null: false
    change_column :reports, :walking_time,:string, null: false
    change_column :reports, :difficulty,:string, null: false
    change_column :reports, :comment,:string, null: false

  end
end

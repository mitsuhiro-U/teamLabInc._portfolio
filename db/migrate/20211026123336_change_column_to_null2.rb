class ChangeColumnToNull2 < ActiveRecord::Migration[5.2]
  def up

    change_column :reports, :comment,:string, null: true
  end

  def down
    change_column :reports, :comment,:string, null: false

  end
end

class CreateLogIns < ActiveRecord::Migration
  def change
    create_table :log_ins do |t|
      t.references :user
      t.string :user_name
      t.string :password
      t.timestamps

    end
  end
end

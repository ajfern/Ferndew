class CreateTodews < ActiveRecord::Migration
  def change
    create_table :todews do |t|
      t.boolean :completed
      t.string :content

      t.timestamps
    end
  end
end

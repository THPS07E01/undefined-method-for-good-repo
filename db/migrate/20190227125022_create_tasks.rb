class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :status, default: false
      t.datetime :deadline

      t.timestamps

      t.belongs_to :category, index: true
    end
  end
end

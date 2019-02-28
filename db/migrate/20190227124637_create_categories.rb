class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps

      t.belongs_to :user, index: true
    end
  end
end

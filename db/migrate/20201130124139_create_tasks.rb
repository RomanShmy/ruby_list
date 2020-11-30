class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.timestamps
    end
    create_table :tasks do |t|
      t.string :title
      t.boolean :done
      t.belongs_to :lists
      t.timestamps
    end
  end
end

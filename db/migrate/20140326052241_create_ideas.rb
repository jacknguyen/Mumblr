class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :picture
      t.text :caption

      t.timestamps
    end
  end
end

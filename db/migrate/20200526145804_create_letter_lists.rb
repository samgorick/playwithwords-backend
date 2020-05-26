class CreateLetterLists < ActiveRecord::Migration[6.0]
  def change
    create_table :letter_lists do |t|
      t.string :letters

      t.timestamps
    end
  end
end

class CreateCanvasses < ActiveRecord::Migration[6.0]
  def change
    create_table :canvasses do |t|
      t.string :question

      t.timestamps
    end
  end
end

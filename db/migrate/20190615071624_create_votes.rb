class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :primary_quality, null: true, foreign_key: {to_table: :qualities}
      t.references :secondary_quality, null: true, foreign_key: {to_table: :qualities}
      t.references :tertiary_quality, null: true, foreign_key: {to_table: :qualities}
      t.text :comment

      t.timestamps
    end
  end
end

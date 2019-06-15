class MoveVotesQualitiesToNewJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table(:votes, :qualities)
    change_table :votes do |t|
      t.remove :primary_quality_id, :secondary_quality_id, :tertiary_quality_id
    end
  end
end

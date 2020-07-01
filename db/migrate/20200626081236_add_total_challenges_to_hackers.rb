class AddTotalChallengesToHackers < ActiveRecord::Migration[5.2]
  def change
    add_column :hackers, :total_challenges, :integer
  end
end

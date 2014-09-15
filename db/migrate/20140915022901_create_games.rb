class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :secret
      t.string :hintOne
      t.string :hintTwo

      t.timestamps
    end
  end
end

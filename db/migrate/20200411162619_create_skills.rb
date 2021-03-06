class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :level
      t.integer :years_of_experience
      t.references :volunteer, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end

class CreateTeamMembers < ActiveRecord::Migration[8.0]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :role
      t.text :bio
      t.string :photo
      t.json :social_links

      t.timestamps
    end
  end
end

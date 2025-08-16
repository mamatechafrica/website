class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :description
      t.text :detailed_description
      t.string :status, default: 'active'
      t.string :repo_url
      t.string :live_url
      t.string :demo_url
      t.text :screenshots # Will store JSON array of screenshot URLs
      t.text :technologies # Will store JSON array of technology names
      t.string :category
      t.boolean :featured, default: false
      t.date :start_date
      t.date :completion_date
      t.string :client_name
      t.text :impact_statement
      t.string :image_url # Main project image
      
      t.timestamps
    end
    
    add_index :projects, :status
    add_index :projects, :featured
    add_index :projects, :category
  end
end
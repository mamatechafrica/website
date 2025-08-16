class AddFieldsToJobBoards < ActiveRecord::Migration[8.0]
  def change
    add_column :job_boards, :title, :string
    add_column :job_boards, :description, :text
    add_column :job_boards, :requirements, :text
    add_column :job_boards, :location, :string
    add_column :job_boards, :salary, :string
    add_column :job_boards, :company, :string
  end
end

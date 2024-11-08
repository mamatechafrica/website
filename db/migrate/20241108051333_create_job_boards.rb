class CreateJobBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :job_boards do |t|
      t.string :index

      t.timestamps
    end
  end
end

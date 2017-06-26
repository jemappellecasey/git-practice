class AddToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :title, :string
    add_column :skills, :percent_utilized, :integer
  end
end

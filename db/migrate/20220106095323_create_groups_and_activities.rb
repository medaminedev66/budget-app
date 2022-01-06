class CreateGroupsAndActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities_groups, id: false do |t|
      t.belongs_to :group
      t.belongs_to :activity
    end
  end
end

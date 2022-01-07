class CreateActivitiesGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :activities_groups, id: false do |t|
      t.belongs_to :activity
      t.belongs_to :group
    end
  end
end

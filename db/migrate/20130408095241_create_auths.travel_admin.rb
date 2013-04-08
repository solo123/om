# This migration comes from travel_admin (originally 20130123025730)
class CreateAuths < ActiveRecord::Migration
  def change
    create_table :auths do |t|
      t.string :role
      t.string :action
      t.string :title
      t.integer :parent_id, :default => 0
      t.timestamps
    end
  end
end

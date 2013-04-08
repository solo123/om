# This migration comes from travel_admin (originally 20130101000008)
class AddPaperclipToPhotos < ActiveRecord::Migration
  def up
    add_attachment :photos, :pic
  end

  def down
    remove_attachment :photos, :pic
  end
end

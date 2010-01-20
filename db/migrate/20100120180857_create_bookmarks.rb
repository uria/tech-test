class CreateBookmarks < ActiveRecord::Migration
  def self.up
    create_table :bookmarks do |t|
      t.integer :site_id
      t.string  :path
      t.text    :title

      t.timestamps
    end
  end

  def self.down
    drop_table :bookmarks
  end
end

class CreateBookmarks < ActiveRecord::Migration
  def self.up
    create_table :bookmarks do |t|
      t.integer :site_id
      t.string  :path
      t.text    :title
      t.string  :short_url

      t.timestamps
    end

    add_index :bookmarks, :site_id
  end

  def self.down
    drop_table :bookmarks
  end
end

class CreateBreezesTags < ActiveRecord::Migration
  def self.up
    create_table :breezes_tags, :id => false do |t|
      t.integer :breeze_id
      t.integer :tag_id
    end
  end

  def self.down
    drop_table :breezes_tags
  end
end

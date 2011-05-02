class CreateBreezes < ActiveRecord::Migration
  def self.up
    create_table :breezes do |t|
      t.integer :user_id
      t.string :content
      t.integer :cat_id
      t.string :subject
      t.string :source
      t.integer :rating

      t.timestamps

    end
  end

  def self.down
    drop_table :breezes
  end
end

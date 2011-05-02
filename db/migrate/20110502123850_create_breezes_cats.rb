class CreateBreezesCats < ActiveRecord::Migration
  def self.up
    create_table :breezes_cats, :id=>false do |t|
      t.integer :breeze_id
      t.integer :cat_id
    end
  end

  def self.down
    drop_table :breezes_cats
  end
end

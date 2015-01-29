class AddIndexToHashtags < ActiveRecord::Migration
  def change
  	add_index :hashtags, :name, unique: true
  end
end

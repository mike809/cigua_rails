class CreateJoinTableHashtagMicropost < ActiveRecord::Migration
  def change
    create_join_table :hashtags, :microposts, table_name: :hashtags_microposts do |t|
      t.index [:hashtag_id, :micropost_id], unique: true
      # t.index [:micropost_id, :hashtag_id]
    end
    add_foreign_key :hashtags_microposts, :hashtags
  	add_foreign_key :hashtags_microposts, :microposts
  end

end

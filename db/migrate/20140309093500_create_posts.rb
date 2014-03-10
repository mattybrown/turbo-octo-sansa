class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
    Post.create(title: "My first post", body: "And this the the post.")
    Post.create(title: "How to jump a fence", body: "1. Run at fence. 2. Avoid fence vertically")
  end

  def down
    drop_table :posts
  end
end

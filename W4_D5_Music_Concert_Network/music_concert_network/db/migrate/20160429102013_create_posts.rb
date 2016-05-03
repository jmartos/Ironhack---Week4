class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :concert, index: true
      t.string :author, :default => "Anonymous"
      t.string :comment

      t.timestamps null: false
    end
  end
end

class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :content
      t.string :title
      t.timestamps
    end
  end
end

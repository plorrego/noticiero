class CreateComents < ActiveRecord::Migration[5.1]
  def change
    create_table :coments do |t|
      t.string :name
      t.text :content
      t.bigint :class_news_id

      t.timestamps
    end
  end
end

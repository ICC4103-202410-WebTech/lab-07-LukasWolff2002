class AddTablePostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_tags do |t|
      t.references :post , foreign_key: true
      t.references :tag , foreign_key: true
    end
  end
end

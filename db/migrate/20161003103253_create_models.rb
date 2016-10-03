class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :tag
      t.string :name
      t.references :article, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end

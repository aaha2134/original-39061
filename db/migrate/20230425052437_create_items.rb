class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.integer :recipes             ,null: false
      t.integer :description         ,null: false
      t.references :user             , foreign_key: true   ,null: false
      t.timestamps
    end
  end
end

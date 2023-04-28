class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.string :recipes             ,null: false
      t.text   :description         ,null: false
      t.references :user             , foreign_key: true   ,null: false
      t.timestamps
    end
  end
end

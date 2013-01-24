class CreateRestService < ActiveRecord::Migration
  def change
    create_table :define_rest_service do |t|
      t.string :name, null: false
      t.text :description
      t.string :url, null: false
      t.string :http_method, null: false, default: 'GET'
      t.string :encryption, null: false, default: 'no'

      t.timestamps
    end
  end
end

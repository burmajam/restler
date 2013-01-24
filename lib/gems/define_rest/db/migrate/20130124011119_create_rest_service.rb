class CreateRestService < ActiveRecord::Migration
  def up
    create_table :define_rest_service do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :http_method
    end
  end

  def down
    drop_table :define_rest_service
  end
end

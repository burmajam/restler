class CreateParameters < ActiveRecord::Migration
  def change
    create_table :define_rest_parameters do |t|
      t.string :name, null: false
      t.text :description
      t.string :presence, null: false
      t.string :example
      t.boolean :quoted_in_json, default: true
      t.integer :service_id

      t.timestamps
    end
  end
end

class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :define_rest_headers do |t|
      t.string :key, null: false
      t.string :value, null: false
      t.integer :service_id

      t.timestamps
    end
  end
end

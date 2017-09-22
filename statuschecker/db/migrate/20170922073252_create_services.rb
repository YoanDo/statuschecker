class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :web_api
      t.string :test

      t.timestamps
    end
  end
end

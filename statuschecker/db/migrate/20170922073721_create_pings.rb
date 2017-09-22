class CreatePings < ActiveRecord::Migration[5.0]
  def change
    create_table :pings do |t|
      t.boolean     :up
      t.references  :service, foreign_key: true, index: true
      t.timestamps
    end
  end
end

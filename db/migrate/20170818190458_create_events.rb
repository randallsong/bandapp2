class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :date
      t.boolean :alcoholserved
      t.integer :band_id

      t.timestamps
    end
  end
end

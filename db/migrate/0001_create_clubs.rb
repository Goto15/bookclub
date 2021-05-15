class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs, id: false do |t|
      t.primary_key :uuid
      t.string :name

      t.timestamps
    end
  end
end

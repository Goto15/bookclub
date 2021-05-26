class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members, primary_key: :uuid, id: false do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

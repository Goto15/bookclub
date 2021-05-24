class CreateClubmembers < ActiveRecord::Migration[6.0]
  def change
    create_table :clubmembers do |t|
      t.integer :member_id
      t.integer :club_id

      t.timestamps
    end
  end
end

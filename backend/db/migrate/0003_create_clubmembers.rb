class CreateClubmembers < ActiveRecord::Migration[6.0]
  def change
    create_table :clubmembers do |t|
      t.string :member_id
      t.string :club_id

      t.timestamps
    end
  end
end

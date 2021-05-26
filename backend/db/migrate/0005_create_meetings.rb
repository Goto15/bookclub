class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings, primary_key: :uuid, id: false do |t|
      t.string :uuid
      t.string :name
      t.string :club_id

      t.timestamps
    end
  end
end

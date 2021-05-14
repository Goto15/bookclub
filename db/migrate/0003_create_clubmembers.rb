class CreateClubmembers < ActiveRecord::Migration[6.0]
  def change
    create_table :lcubmembers do |t|

      t.timestamps
    end
  end
end

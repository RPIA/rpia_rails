class CreateS
 < ActiveRecord::Migration
  def change
    create_table :s
 do |t|

      t.timestamps
    end
  end
end

class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :ticket_id
      t.integer :weight

      t.timestamps
    end
  end
end

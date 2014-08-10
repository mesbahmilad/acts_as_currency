class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :paid
      t.integer :outstanding

      t.timestamps
    end
  end
end

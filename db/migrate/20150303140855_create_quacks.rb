class CreateQuacks < ActiveRecord::Migration
  def change
    create_table :quacks do |t|

      t.timestamps null: false
    end
  end
end

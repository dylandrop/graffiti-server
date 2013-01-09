class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.text :lines

      t.timestamps
    end
  end
end

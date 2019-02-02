class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|
      t.text :text
      t.text :coche
    end
  end
end

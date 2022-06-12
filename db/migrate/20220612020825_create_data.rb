class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.string :name
      t.string :code
      t.numeric :value, precision: 10, scale: 2
      
      t.timestamps
    end
  end
end

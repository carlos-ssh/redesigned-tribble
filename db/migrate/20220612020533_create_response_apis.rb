class CreateResponseApis < ActiveRecord::Migration[7.0]
  def change
    create_table :response_apis do |t|
      t.datetime :execution_time
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

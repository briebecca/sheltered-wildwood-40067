class CreateBatches < ActiveRecord::Migration[6.1]
  def change
    create_table :batches do |t|
      t.text :csv

      t.timestamps
    end
  end
end

class CreateDamnFailures < ActiveRecord::Migration
  def change
    create_table :damn_failures do |t|
      t.text :message

      t.timestamps
    end
  end
end

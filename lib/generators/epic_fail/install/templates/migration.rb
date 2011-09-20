class CreateEpicFailFailures < ActiveRecord::Migration
  def change
    create_table :epic_fail_failures do |t|
      t.text :message

      t.timestamps
    end
  end
end

class CreateEpicFailFailures < ActiveRecord::Migration
  def change
    create_table :epic_fail_failures do |t|
      t.text :exception
      t.text :message
      t.text :backtrace

      t.timestamps
    end
  end
end

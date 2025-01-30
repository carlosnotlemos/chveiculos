class CreateAcademics < ActiveRecord::Migration[8.0]
  def change
    create_table :academics do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
      t.boolean :active, default: false

      t.timestamps
    end
  end
end

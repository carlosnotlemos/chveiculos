class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :language
      t.string :description
      t.string :image_url
      t.datetime :date_p

      t.timestamps
    end
  end
end

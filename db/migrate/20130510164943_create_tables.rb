class CreateTables < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :language
      t.string :github
    end
  end
end

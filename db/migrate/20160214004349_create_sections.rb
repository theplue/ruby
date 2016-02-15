class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :course, index: true, foreign_key: true
      t.references :professor, index: true, foreign_key: true
      t.integer :number
      t.string :location
      t.time :classTime

      t.timestamps null: false
    end
  end
end

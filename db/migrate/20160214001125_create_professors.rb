class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :fname
      t.string :lname
      t.string :office
      t.references :student, index: true, foreign_key: true
      t.string :department

      t.timestamps null: false
    end
  end
end

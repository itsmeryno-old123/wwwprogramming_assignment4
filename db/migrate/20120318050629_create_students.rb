class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string          :name
      t.string          :studentnumber
      t.string          :email
      t.string          :password
      t.string          :campus
    end
  end
  
  def down 
    drop_table :students
  end
end

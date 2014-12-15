class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :attending
      t.string :avatar
      t.string :comment
      t.string :email

      t.timestamps
    end
  end
end

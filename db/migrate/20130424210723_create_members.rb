class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :nickname
      t.string :phone
      t.text :currently_does
      t.text :life_and_work
      t.string :function
      t.string :site
      t.string :github
      t.string :twitter
      t.string :slideshare
      t.string :lattes
      t.date :start_date
      t.date :desertion_date

      t.timestamps
    end
  end
end

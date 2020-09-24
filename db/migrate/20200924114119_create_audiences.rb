class CreateAudiences < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phone
      t.date :birthday
      t.string :tags
      t.string :email_marketing

      t.timestamps
    end
  end
end

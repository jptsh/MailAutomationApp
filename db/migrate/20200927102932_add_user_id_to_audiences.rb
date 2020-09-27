class AddUserIdToAudiences < ActiveRecord::Migration[6.0]
  def change
    add_reference :audiences, :user, null: false, foreign_key: true
  end
end

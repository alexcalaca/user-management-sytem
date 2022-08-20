class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :account_status

      t.timestamps
    end
  end
end

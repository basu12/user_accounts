class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.decimal :balance, null: false
      t.references :user, index: true
      t.timestamps
    end
  end
end

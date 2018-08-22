class AddKeyColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_mails, :key, :string
  end
end

class AddSourceColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_mails, :source, :string
  end
end

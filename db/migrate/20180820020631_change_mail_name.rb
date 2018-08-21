class ChangeMailName < ActiveRecord::Migration[5.1]
  def change
    rename_table :mails, :contact_mails
  end
end

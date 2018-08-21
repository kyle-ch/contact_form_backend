class CreateMails < ActiveRecord::Migration[5.1]
  def change
    create_table :mails do |t|
      t.string :body
      t.string :email
      t.string :time
      t.string :name

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

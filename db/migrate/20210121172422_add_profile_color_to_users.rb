class AddProfileColorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_color, :string
  end
end

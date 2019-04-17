class SetDefaultValueForStatusInPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :status, :integer, default: 0
  end
end

class RemoveAuthorIdIndexFromQuestions < ActiveRecord::Migration[6.0]
  def change
    remove_index :questions, :author_id
  end
end

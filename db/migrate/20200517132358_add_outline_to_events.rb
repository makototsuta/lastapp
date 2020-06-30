class AddOutlineToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :outline, :string
  end
end

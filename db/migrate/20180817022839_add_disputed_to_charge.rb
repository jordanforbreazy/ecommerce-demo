class AddDisputedToCharge < ActiveRecord::Migration[5.2]
  def change
    add_column(:charges, :disputed, :boolean)
  end
end

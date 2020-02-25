class ChangeStudioPriceToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :studios, :price, :integer
  end
end

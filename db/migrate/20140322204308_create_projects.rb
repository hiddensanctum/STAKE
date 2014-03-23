class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.float :total_fund_ask
      t.string :founders
      t.float :equity_offered
      t.float :total_raised
      t.string :image

      t.timestamps
    end
  end
end

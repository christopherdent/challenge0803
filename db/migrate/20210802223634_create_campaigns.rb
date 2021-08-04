class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :amount
      t.string :image_url
      t.timestamps
    end
  end
end

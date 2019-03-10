class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.text      :country
      t.text      :supply_chain
      t.text      :image
      t.text      :message
      t.timestamps null: true
    end
  end
end

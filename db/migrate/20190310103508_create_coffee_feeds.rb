class CreateCoffeeFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_feeds do |t|
      t.text      :image
      t.text      :message
      t.text      :id_user
      t.text      :id_genre
      t.text      :id_community
      t.text      :language
      t.timestamps  null: true
    end
  end
end

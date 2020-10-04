class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
    	t.string :news_title, null: false
    	t.text :news_description, null: false
    	t.datetime :news_publish_date_time, null: false
    	t.string :news_link, unique: true, null: false
    	t.integer :click_count, default: 0
    	t.references :category, index: true
    	t.references :agency, index: true
      t.timestamps
    end
  end
end

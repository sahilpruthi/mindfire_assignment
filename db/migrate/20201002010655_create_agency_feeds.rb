class CreateAgencyFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_feeds do |t|
    	t.string :agency_feed_url
    	t.references :agency, index: true
    	t.references :category, index: true
      t.timestamps
    end
  end
end

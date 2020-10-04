class CreateAgencies < ActiveRecord::Migration[6.0]
  def change
    create_table :agencies do |t|
			t.string :name, null: false
			t.string :agency_logo_path    	
      t.timestamps
    end
  end
end

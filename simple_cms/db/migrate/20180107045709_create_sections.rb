class CreateSections < ActiveRecord::Migration[5.1]
  	def up
    	create_table :sections do |t|
    		t.integer "page_id"
    		t.string "name" #same as above
    		t.integer "position"
    		t.boolean "visible", :default => false
    		t.string "content_type"
    		t.text "content"

        t.timestamps
      	end

      	puts "*** Adding Index on Foreign Key"
    	add_index("sections","page_id")
    end

    def down
    	remove_index("sections","page_id")
    	drop_table :sections
  	end
end

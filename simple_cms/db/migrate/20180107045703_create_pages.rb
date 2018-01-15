class CreatePages < ActiveRecord::Migration[5.1]
  	def up
    	create_table :pages do |t|
    		t.integer "subject_id"
    		t.string "name" 
    		t.integer "permalink"
    		t.integer "position"
    		t.boolean "visible", :default => false

      	t.timestamps 
      end
      
      puts "*** Adding Index on Foreign Key"
      add_index("pages","subject_id")
      add_index("pages","permalink")
    end

    def down
      remove_index("pages","permalink")
      remove_index("pages","subject_id")
    	drop_table :pages
  	end
end

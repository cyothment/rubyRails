class CreateSubjects < ActiveRecord::Migration[5.1]
  	def up
    	create_table :subjects do |t|
    		t.string "name"
    		t.integer "position" #same as above
    		t.boolean "visible", :default => false

      	t.timestamps 
      	end
    end

    def down
    	drop_table :subjects
  	end
end

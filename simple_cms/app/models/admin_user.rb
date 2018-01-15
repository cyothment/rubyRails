class AdminUser < ApplicationRecord

	#Point to a specified table if class name is different from table name
	#self.table_name = "admin_users"

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits

end
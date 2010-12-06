class AddSubFieldsMore < ActiveRecord::Migration
 	def self.up
		change_table :submissions do |t|
			t.string :office_address
			t.string :phone_number
			t.text :small_words
			t.text :medium_words
			t.text :large_words
		end
	end
	
	def self.down
		change_table :submissions do |t|
			t.remove :office_address, :phone_number, :small_words, :mediumwords, :large_words
		end
	end

end	

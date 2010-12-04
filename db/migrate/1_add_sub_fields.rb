class AddSubFields < ActiveRecord::Migration
 	def self.up
		change_table :submissions do |t|
			t.integer :shirt_size_s
			t.integer :shirt_size_m
			t.integer :shirt_size_l
			t.integer :shirt_size_xl
		end
	end
	
	def self.down
		change_table :submissions do |t|
			t.remove :shirt_size_s, :shirt_size_m, :shirt_size_l, :shirt_size_xl
		end
	end

end	

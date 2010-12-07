class Submission < ActiveRecord::Base
	
	validates :full_name, :presence => true
	validates :department, :presence => true
	
  validates :shirt_size_s, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_m, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_l, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_xl, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  
	def cloud_output
		output = ''
		if small_words != nil then output << cloud_converter(small_words, 20) end
		if medium_words != nil then output << cloud_converter(medium_words, 40) end
		if large_words != nil then output << cloud_converter(large_words, 80) end
		output
	end

	def contact_info
	  output = Array.new
		if office_address != nil then output << office_address end
		if phone_number != nil then output << phone_number end
		if email_address != nil then output << email_address end
		output
	end
  
  def cloud_converter raw, size
	  output = ''
    array = array_of_words raw
		array.each do |word|
			randomized_size = size + rand(11)
		  output << word
			output << ":" + randomized_size.to_s + "\n"
		end
	
		output
	end

	def array_of_words raw
	  array = raw.split %r{\n|,}
		
		array.each do |word|
		  word.strip!
		end
		
		array
	end

end

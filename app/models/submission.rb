class Submission < ActiveRecord::Base
	
	validates :email_address, :presence => true
	validates :full_name, :presence => true
	validates :department, :presence => true
	
  validates :shirt_size_s, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_m, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_l, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_xl, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  
	def cloud_output
	  output = cloud_converter small_words, 20
    output << cloud_converter(medium_words, 40)
		output << cloud_converter(large_words, 80)
		output
	end
  
  def cloud_converter raw, size
	  output = ''
    array = array_of_words raw
		array.each do |word|
		  output << word
			output << ":" + size.to_s + "\n"
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

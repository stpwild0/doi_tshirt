class Submission < ActiveRecord::Base
	
	validates :email_address, :presence => true
	validates :full_name, :presence => true
	validates :department, :presence => true
	
  validates :shirt_size_s, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_m, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_l, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
  validates :shirt_size_xl, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}

end

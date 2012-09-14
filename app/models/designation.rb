class Designation < ActiveRecord::Base

  attr_accessible :description, :name

  #validations
  validates :name,         :presence => true, 
                           :length   => {:maximum => 30, :if => :name_present? },
                           :uniqueness => {:case_sensitive => false, :if => :name_present? }

  validates :description,  :presence => true, 
                           :length   => {:maximum => 250, :if => :description_present? }

  def name_present?
    name.present?
  end

  def description_present?
    description.present?
  end
                           
end

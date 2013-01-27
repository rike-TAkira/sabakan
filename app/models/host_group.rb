class HostGroup < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true, uniqueness: true 

  has_many :services

  def to_param
    name
  end
end

class Role < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true, uniqueness: true

  def to_param
    name
  end
end

class Host < ActiveRecord::Base
  attr_accessible :active, :description, :ip_address, :name

  validates :name,       presence: true, uniqueness: true
  validates :ip_address, format: { with: /\A\d+\.\d+\.\d+\.\d+\Z/ }

  def to_param
    name
  end
end

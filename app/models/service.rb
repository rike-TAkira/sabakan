class Service < ActiveRecord::Base
  attr_accessible :description, :host_group_id, :name

  belongs_to :host_group

  def to_param 
    name
  end
end

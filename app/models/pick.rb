class Pick < ActiveRecord::Base
  belongs_to :ticket
  attr_accessible :ticket_id
  attr_accessible :weight
end

class Ticket < ActiveRecord::Base
  
  has_many :picks
  accepts_nested_attributes_for :picks
  attr_accessible :picks_attributes

  before_save :mark_destroy_zero_weighted_picks

  def mark_destroy_zero_weighted_picks
    picks.each do |pick|
      pick.mark_for_destruction if pick.weight.to_i == 0
    end    
  end
end

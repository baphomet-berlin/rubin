module Rubin
  class Figure < ActiveRecord::Base
    belongs_to :displayable, polymorphic: true, dependent: :destroy
    accepts_nested_attributes_for :displayable
    def image
      self.displayable.image
    end
    def name
      "#{self.displayable_type}: #{self.displayable.title}" 
    end
  end
end

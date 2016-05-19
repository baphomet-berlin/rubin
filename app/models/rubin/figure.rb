module Rubin
  class Figure < ActiveRecord::Base
    belongs_to :displayable, polymorphic: true, dependent: :destroy
    belongs_to :figurable, polymorphic: true, dependent: :destroy
    accepts_nested_attributes_for :displayable, allow_destroy: true
    def image
      self.displayable.image
    end
    def name
      if self.displayable
        "#{self.displayable_type.demodulize}: #{self.displayable.name}" 
      else
        self.id
      end
    end
  end
end

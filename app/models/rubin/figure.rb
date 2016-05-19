module Rubin
  class Figure < ActiveRecord::Base
    belongs_to :displayable, polymorphic: true, dependent: :destroy
    belongs_to :figurable, polymorphic: true, dependent: :destroy
    def image
      self.displayable.image
    end
    def name
      if self.displayable
        "#{self.displayable_type}: #{self.displayable.title}" 
      else
        self.id
      end
    end
  end
end

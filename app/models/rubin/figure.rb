module Rubin
  class Figure < ActiveRecord::Base
    belongs_to :displayable, polymorphic: true
  end
end

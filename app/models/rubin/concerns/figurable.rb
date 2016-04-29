module Rubin::Concerns::Figurable 
  extend ActiveSupport::Concern
  included do 
    def bubu
      'bibi'
    end
  end
end
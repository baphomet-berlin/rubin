module Rubin::Concerns::Figurable 
  extend ActiveSupport::Concern
  included do 
    has_many :figures, class_name: 'Rubin::Figure', as: :figurable
    accepts_nested_attributes_for :figures
  end
end
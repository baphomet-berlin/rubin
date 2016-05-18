module Rubin::Concerns::Figurable 
  extend ActiveSupport::Concern
  included do 
    has_many :figurable_figures, as: :figurable, class_name: 'Rubin::FigurableFigure'
    has_many :figures, through: :figurable_figures, class_name: 'Rubin::Figure'
  end
end
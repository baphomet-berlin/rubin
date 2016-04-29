module Rubin
  class FigurableFigure < ActiveRecord::Base
    belongs_to :figurable, polymorphic: true
    belongs_to :figure, class_name: 'Rubin::Figure'
  end
end

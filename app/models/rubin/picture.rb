module Rubin
  class Picture < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment :image, presence: true
    has_one :figure, as: :displayable, class_name: 'Rubin::Figure'
  end
end

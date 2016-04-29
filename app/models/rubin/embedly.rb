module Rubin
  class Embedly < ActiveRecord::Base
    has_attached_file :preview, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment :preview, presence: true
    has_one :figure, as: :displayable, class_name: "Rubin::Figure"
    before_save :set_embed_fields

    private

    def set_embed_fields
      response = EMBEDLY.extract(
        :url => self.original_url,
        :luxe => true
      )
      result = response[0].marshal_dump
      self.title = result[:title]
      self.provider = result[:provider_name]
      self.code = result[:media][:html]
      self.preview = URI.parse(result[:images][0]["url"]).open
    end
  end
end

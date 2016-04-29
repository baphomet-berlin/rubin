class CreateRubinEmbedlies < ActiveRecord::Migration
  def change
    create_table :rubin_embedlies do |t|
      t.string :title
      t.string :provider
      t.string :original_url
      t.text :code
      t.attachment :preview

      t.timestamps null: false
    end
  end
end

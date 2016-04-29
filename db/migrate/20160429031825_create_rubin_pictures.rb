class CreateRubinPictures < ActiveRecord::Migration
  def change
    create_table :rubin_pictures do |t|
      t.string :title
      t.attachment :image
      t.timestamps null: false
    end
  end
end

class CreateRubinFigures < ActiveRecord::Migration
  def change
    create_table :rubin_figures do |t|
      t.references :displayable, polymorphic: true, index: true
      t.text :caption

      t.timestamps null: false
    end
  end
end

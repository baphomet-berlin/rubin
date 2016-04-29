class CreateRubinFigurableFigures < ActiveRecord::Migration
  def change
    create_table :rubin_figurable_figures do |t|
      t.references :figurable, polymorphic: true, index: { name: 'index_rubin_join_figurable' }
      t.references :figure, foreign_key: true, index: { name: 'index_rubin_join_figure' }

      t.timestamps null: false
    end
  end
end

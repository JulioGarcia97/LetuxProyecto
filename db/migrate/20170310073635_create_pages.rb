class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.string :main_image

      t.timestamps
    end
  end
end
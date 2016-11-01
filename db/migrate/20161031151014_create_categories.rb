class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    Categorie.create :name => "life"
    Categorie.create :name => "work"
    Categorie.create :name => "love"
  end
end

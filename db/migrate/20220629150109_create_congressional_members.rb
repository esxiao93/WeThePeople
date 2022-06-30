class CreateCongressionalMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :congressional_members do |t|
      t.string :name
      t.text :bio
      t.string :political_party
      t.string :years_in_office
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

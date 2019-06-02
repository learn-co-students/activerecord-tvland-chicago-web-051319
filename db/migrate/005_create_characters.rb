class CreateCharacters < ActiveRecord::Migration[5.0]
    def change
        create_table :characters do |t|
            t.string :name
            t.integer :show_id
            t.belongs_to :actor
        end
    end
end
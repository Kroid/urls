class CreateShortUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :short_urls do |t|
      t.string :short, null: false
      t.string :long, null: false
      t.integer :visits_count

      t.timestamps
    end

    add_index :short_urls, :short, unique: true
  end
end

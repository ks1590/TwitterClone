class Twittters < ActiveRecord::Migration[5.2]
  def change
      create_table :twittters do |t|
      t.text :content
    end
  end
end

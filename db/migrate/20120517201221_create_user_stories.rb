class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string  :number
      t.string  :title
      t.text    :description
      t.text    :criterias
      t.integer :estimation
      t.integer :priority
      t.string  :status
      t.integer :sprint
      t.string  :state

      t.timestamps
    end
  end
end

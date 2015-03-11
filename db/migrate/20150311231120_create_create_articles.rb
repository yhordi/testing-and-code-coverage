class CreateCreateArticles < ActiveRecord::Migration
  def change
    create_table :create_articles do |t|

      t.timestamps
    end
  end
end

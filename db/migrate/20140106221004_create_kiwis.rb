class CreateKiwis < ActiveRecord::Migration
  def change
  	create_table :kiwis do |t|
  		t.string :title
  		t.text :body
  		t.timestamps
  	end
  end
end
class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
	t.string	:name
	t.string	:address
	t.date		:coming
	t.string	:comments
	t.timestamps
    end
  end
end

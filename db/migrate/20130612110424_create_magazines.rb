class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
	t.integer	:client_id
	t.string	:comment
	t.date		:startmag
	t.date		:stopmag
	t.decimal	:price
	t.timestamps
    end
  end
end

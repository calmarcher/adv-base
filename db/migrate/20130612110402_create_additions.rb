class CreateAdditions < ActiveRecord::Migration
  def change
    create_table :additions do |t|
	t.integer	:client_id
	t.string	:cont
	t.string	:contname
	t.string	:email
	t.timestamps
    end
  end
end

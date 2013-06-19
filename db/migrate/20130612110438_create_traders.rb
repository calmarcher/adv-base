class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
	t.string	:name
	t.string	:cont
	t.string	:contname
	t.string	:email
	t.string	:comment
	t.timestamps
    end
  end
end

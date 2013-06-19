class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
	t.string	:product
	t.integer	:trader_id
	t.string	:adcont
	t.string	:adcontname
	t.timestamps
    end
  end
end

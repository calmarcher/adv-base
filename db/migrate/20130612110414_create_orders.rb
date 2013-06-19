class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
	t.integer	:client_id
	t.string	:order
	t.decimal	:price
	t.date		:startorder
	t.date		:stoporder
	t.timestamps
    end
  end
end

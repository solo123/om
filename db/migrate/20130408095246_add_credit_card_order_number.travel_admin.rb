# This migration comes from travel_admin (originally 20130406090707)
class AddCreditCardOrderNumber < ActiveRecord::Migration
  def change
    add_column :pay_credit_cards, :order_id, :integer
    add_column :pay_credit_cards, :issue_date, :string
    add_column :pay_credit_cards, :issue_number, :string
  end
end

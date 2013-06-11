class RenamePayDateFromBillsToPaymentDate < ActiveRecord::Migration
  def up
    rename_column :bills, :pay_date, :payment_date
  end

  def down
    rename_column :bills, :payment_date, :pay_date
  end
end

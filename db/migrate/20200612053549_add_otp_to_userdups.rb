class AddOtpToUserdups < ActiveRecord::Migration[5.2]
  def change
    add_column :userdups, :otp, :intnteger
  end
end

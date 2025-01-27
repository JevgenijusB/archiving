class CreateLogs < ActiveRecord::Migration
  def change
    create_table :log_days do |t|
      t.references :post
      t.date :day
    end
    create_table :log_days_archive do |t|
      t.references :post
      t.date :day
    end

    create_table :log_lines do |t|
      t.references :log_day
      t.string :descr
    end
    create_table :log_lines_archive do |t|
      t.references :log_day
      t.string :descr
    end
  end

end

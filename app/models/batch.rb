class Batch < ApplicationRecord
  after_create do |batch|
    CSV.new(batch.csv, headers: true).each do |row|
      puts Contact.new(row.to_h)
    end
  end
end

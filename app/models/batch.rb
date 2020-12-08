class Batch < ApplicationRecord
  after_create do |batch|
    CSV.new(batch.csv, headers: true).each do |row|
    end
  end
end

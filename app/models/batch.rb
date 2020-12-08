require 'csv'

class Batch < ApplicationRecord
  after_create do |batch|
    Contact.transaction do
      CSV.new(batch.csv, headers: true).each do |row|
        c = Contact.create(row.to_h.slice("first_name", "last_name", "phone"))
        Rails.logger.info c.errors.messages
        raise unless c.valid?
      end
    end
  end
end

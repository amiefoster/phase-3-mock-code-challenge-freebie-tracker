class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(provided_dev, provided_item_name, provided_value)
        Freebie.create(item_name: provided_item_name, value: provided_value, company_id: self.id, dev_id: provided_dev.id)
        
    end

    def self.oldest_company
        self.order(:founding_year).first
    end
end

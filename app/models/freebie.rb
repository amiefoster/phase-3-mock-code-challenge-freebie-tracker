class Freebie < ActiveRecord::Base
    belongs_to :Dev
    belongs_to :Company
end

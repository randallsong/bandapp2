class Event < ApplicationRecord
	has_one :venue
	has_many :performers
end

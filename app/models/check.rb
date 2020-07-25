class Check < ApplicationRecord
	belongs_to :check_list

	validates :check, presence: true
end

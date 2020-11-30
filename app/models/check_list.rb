class CheckList < ApplicationRecord
	has_many :checks, dependent: :destroy
	accepts_nested_attributes_for :checks, allow_destroy: true
end

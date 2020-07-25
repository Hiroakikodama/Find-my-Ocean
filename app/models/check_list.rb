class CheckList < ApplicationRecord
	has_many :checks, dependent: :destroy
end

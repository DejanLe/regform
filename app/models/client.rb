class Client < ApplicationRecord
	has_many :requests
	has_many :personnel_infos
	belongs_to :user, optional: true
end

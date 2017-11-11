class Client < ApplicationRecord
	has_many :requests, dependent: :destroy
	has_many :personnel_infos,  dependent: :destroy
	belongs_to :user, optional: true
end

class PersonnelInfo < ApplicationRecord
  belongs_to :client, optional: true
end

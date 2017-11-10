class Request < ApplicationRecord
  belongs_to :client, optional: true
end

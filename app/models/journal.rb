class Journal < ActiveRecord::Base
  belongs_to :subject
  paginates_per 10
end

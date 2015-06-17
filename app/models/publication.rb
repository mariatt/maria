class Publication < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :title, :person_id
end

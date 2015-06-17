class Person < ActiveRecord::Base
	has_many :publications
    validates_presence_of :dob

    def to_s
        "#{first_name} #{last_name}"
    end
end

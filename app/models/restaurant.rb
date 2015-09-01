class Restaurant < ActiveRecord::Base
    belongs_to :stereotype
    has_many :adventures
end

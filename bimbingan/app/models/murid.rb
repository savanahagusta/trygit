class Murid < ApplicationRecord
    belongs_to :lecture
    belongs_to :major
end

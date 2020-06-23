class Building < ApplicationRecord
    has_many :buildings, dependent: :destroy
end

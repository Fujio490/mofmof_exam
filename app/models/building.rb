class Building < ApplicationRecord
    has_many :near_stations, dependent: :destroy
    validates :name, presence: true
    validates :rent, presence: true
    validates :address, presence: true
    validates :age, presence: true
    validates :note, presence: true
end

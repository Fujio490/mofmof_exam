class NearStation < ApplicationRecord
    belongs_to :building
    validates :track_name, presence: true
    validates :station_name, presence: true
    validates :minute_walk, presence: true
end

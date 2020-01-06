class Kid < ApplicationRecord
    # validates :age, is: (6..13)
    validates :username, length: {minimum: 7, maximum: 25}, uniqueness: true
    validates :age, numericality: { only_integer: true, greater_than: 6, less_than: 15}
end

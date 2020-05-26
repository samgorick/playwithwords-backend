class User < ApplicationRecord
  has_many :games
  has_many :letter_lists, through: :games
end

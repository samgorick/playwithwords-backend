class Game < ApplicationRecord
  belongs_to :user
  belongs_to :letter_list
end

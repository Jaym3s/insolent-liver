class Game < ActiveRecord::Base
  belongs_to :player, as: :current_turn_player
  has_and_belongs_to_many :players
  serialize :board_state, Hash
end

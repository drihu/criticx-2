class Critic < ApplicationRecord
  belongs_to :game
  validates :username, presence: true
  validates :username, format: { with: /\A[A-Za-z0-9]+\z/ }
  validates :body, :title, presence: { message: 'Please write something!' }
end

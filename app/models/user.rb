class User < ActiveRecord::Base

  has_secure_password
  has_many :adventures
  # has_many :bars, through: :stereotypes
  # has_many :restaurants, through: :stereotypes
  # has_many :weekends, through: :stereotypes
  # has_many :jobs, through: :stereotypes

  validates :username, presence: true, uniqueness: { case_sensitive: false }#, length:{minimum:6}
  validates :password, length:{minimum:1}
  validates :password_confirmation, presence: true
end

class User < ActiveRecord::Base
  has_many :rounds
  has_many :guesses, through: :rounds
  has_many :decks, through: :rounds

  validates :first_name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :email, :format => { with: /.@.+\../}

  def connection
    self.connection
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

end

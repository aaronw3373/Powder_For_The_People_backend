class User < ActiveRecord::Base
  has_many :resorts, through: :favorites
  has_many :favorites, :dependent => :destroy
  validates :email, uniqueness: true


  has_secure_password

  before_create :generate_token
  after_find :fix_up_token

  def authenticate_with_new_token(password)
    authenticate_without_new_token(password) && new_token
  end

  alias_method_chain :authenticate, :new_token

  private

  def generate_token
    self.token = SecureRandom.uuid.gsub(/\-/,'')
  end
  #unconditionally create and set a new token
  def new_token
    update_columns(token: generate_token, updated_at: Time.current)
  end
  #expire old tokens
  def fix_up_token
    new_token if updated_at < 7.days.ago
  end

end

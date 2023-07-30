class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :password_complexity_validation

  with_options presence: true do
    validates :nickname, uniqueness: true
    validates :family_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birthday
  end

  private

  def password_complexity_validation
    return if password.blank?

    unless password.match(/\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i)
      errors.add(:password, 'は半角英字と数字の両方を含めてください')
    end
  end

end

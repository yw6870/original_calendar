class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  has_many :events, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :nickname, presence: true
  validates :prefecture_id, numericality: { other_than: 1, message: 'select' }
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'は英数字混合で入力してください'
end

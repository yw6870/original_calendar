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

  def city
    if self.prefecture_id == 2
      return "北海道" 
    elsif self.prefecture_id == 3
      return "青森県"
    elsif self.prefecture_id == 4
      return "岩手県"
    elsif self.prefecture_id == 5
      return "宮城県"
    elsif self.prefecture_id == 6
      return "秋田県"
    elsif self.prefecture_id == 7
      return "山形県"
    elsif self.prefecture_id == 8
      return "福島県"
    elsif self.prefecture_id == 9
      return "茨城県"
    elsif self.prefecture_id == 10
      return "栃木県"
    elsif self.prefecture_id == 11
      return "群馬県"
    elsif self.prefecture_id == 12
      return "埼玉県"
    elsif self.prefecture_id == 13
      return "千葉県"
    elsif self.prefecture_id == 14
      return "東京都"
    elsif self.prefecture_id == 15
      return "神奈川県"
    elsif self.prefecture_id == 16
      return "新潟県"
    elsif self.prefecture_id == 17
      return "富山県"
    elsif self.prefecture_id == 18
      return "石川県"
    elsif self.prefecture_id == 19
      return "福井県"
    elsif self.prefecture_id == 20
      return "山梨県"
    elsif self.prefecture_id == 21
      return "長野県"
    elsif self.prefecture_id == 22
      return "岐阜県"
    elsif self.prefecture_id == 23
      return "静岡県"
    elsif self.prefecture_id == 24
      return "愛知県"
    elsif self.prefecture_id == 25
      return "三重県"
    elsif self.prefecture_id == 26
      return "滋賀県"
    elsif self.prefecture_id == 27
      return "京都府"
    elsif self.prefecture_id == 28
      return "大阪府"
    elsif self.prefecture_id == 29
      return "兵庫県"
    elsif self.prefecture_id == 30
      return "奈良県"
    elsif self.prefecture_id == 31
      return "和歌山県"
    elsif self.prefecture_id == 32
      return "鳥取県"
    elsif self.prefecture_id == 33
      return "島根県"
    elsif self.prefecture_id == 34
      return "岡山県"
    elsif self.prefecture_id == 35
      return "広島県"
    elsif self.prefecture_id == 36
      return "山口県"
    elsif self.prefecture_id == 37
      return "徳島県"
    elsif self.prefecture_id == 38
      return "香川県"
    elsif self.prefecture_id == 39
      return "愛媛県"
    elsif self.prefecture_id == 40
      return "高知県"
    elsif self.prefecture_id == 41
      return "福岡県"
    elsif self.prefecture_id == 42
      return "佐賀県"
    elsif self.prefecture_id == 43
      return "長崎県"
    elsif self.prefecture_id == 44
      return "熊本県"
    elsif self.prefecture_id == 45
      return "大分県"
    elsif self.prefecture_id == 46
      return "宮崎県"
    elsif self.prefecture_id == 47
      return "鹿児島県"
    elsif self.prefecture_id == 48
      return "沖縄県"
    end
  end

  def city_en
    if self.prefecture_id == 2
      return "Hokkaido"
    elsif self.prefecture_id == 3
      return "Aomori-ken"
    elsif self.prefecture_id == 4
      return "Iwate"
    elsif self.prefecture_id == 5
      return "Miyagi-ken"
    elsif self.prefecture_id == 6
      return "Akita"
    elsif self.prefecture_id == 7
      return "Yamagata-ken"
    elsif self.prefecture_id == 8
      return "Fukushima-ken"
    elsif self.prefecture_id == 9
      return "Ibaraki"
    elsif self.prefecture_id == 10
      return "Tochigi"
    elsif self.prefecture_id == 11
      return "Gunma-ken"
    elsif self.prefecture_id == 12
      return "Saitama-ken"
    elsif self.prefecture_id == 13
      return "Chiba-ken"
    elsif self.prefecture_id == 14
      return "Tokyo"
    elsif self.prefecture_id == 15
      return "Kanagawa"
    elsif self.prefecture_id == 16
      return "Niigata-ken"
    elsif self.prefecture_id == 17
      return "Toyama-ken"
    elsif self.prefecture_id == 18
      return "Ishikawa-ken"
    elsif self.prefecture_id == 19
      return "Fukui-shi"
    elsif self.prefecture_id == 20
      return "Yamanashi"
    elsif self.prefecture_id == 21
      return "Nagano-ken"
    elsif self.prefecture_id == 22
      return "Gifu-shi"
    elsif self.prefecture_id == 23
      return "Shizuoka"
    elsif self.prefecture_id == 24
      return "Aichi-ken"
    elsif self.prefecture_id == 25
      return "Mie-ken"
    elsif self.prefecture_id == 26
      return "Shiga"
    elsif self.prefecture_id == 27
      return "Kyoto"
    elsif self.prefecture_id == 28
      return "Ōsaka-fu"
    elsif self.prefecture_id == 29
      return "Akashi"
    elsif self.prefecture_id == 30
      return "Nara-ken"
    elsif self.prefecture_id == 31
      return "Wakayama"
    elsif self.prefecture_id == 32
      return "Tottori"
    elsif self.prefecture_id == 33
      return "Shimane-ken"
    elsif self.prefecture_id == 34
      return "Okayama-ken"
    elsif self.prefecture_id == 35
      return "Hiroshima-ken"
    elsif self.prefecture_id == 36
      return "Yamaguchi"
    elsif self.prefecture_id == 37
      return "Tokushima-ken"
    elsif self.prefecture_id == 38
      return "Kagawa-ken"
    elsif self.prefecture_id == 39
      return "Ehime"
    elsif self.prefecture_id == 40
      return "Kochi"
    elsif self.prefecture_id == 41
      return "Fukuoka"
    elsif self.prefecture_id == 42
      return "Saga-ken"
    elsif self.prefecture_id == 43
      return "Nagasaki"
    elsif self.prefecture_id == 44
      return "Kumamoto"
    elsif self.prefecture_id == 45
      return "Ōita"
    elsif self.prefecture_id == 46
      return "Miyazaki"
    elsif self.prefecture_id == 47
      return "Kagoshima-ken"
    elsif self.prefecture_id == 48
      return "Okinawa"
    end
  end
end

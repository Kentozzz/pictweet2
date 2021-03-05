class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%") #引数で渡されるsearchの中身に何もなければ、全ての投稿を取得できるようにします。
  end
end
#whereは条件に一致したレコードのインスタンスを配列の形で取得
#テーブルとのやりとりに関するメソッドはモデルに置く